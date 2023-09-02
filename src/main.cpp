#include <avr/io.h>
#include <avr/interrupt.h>
#include "ir_receiver.h"
#include "ir_buttons.h"
#include "fast_timer.h"
#include "color.h"

//device address
#define DEV_ADDR 0x00
//dimming to 50%
#define DEV_DIMM

#define FLAG_MODIFIER 0x80
#define FLAG_INDEX 0x0F

//software pwm function
static void softpwm();
//color calculator
static void coloriser(bool reset = 0);
//ir remote driver
static void receiver();
//power supply manager
void powermanager();

/*
Making color ports local
is not viable with the current
program structure.
*/

//color ports to write to
color24 p1; //TEXT 
color24 p2; //GARNISH
color24 p3; //GLASS
color24 p4; //FLAMINGO
color24 p5; //LEAVES
color24 p6; //STUMP

uint8_t PWR_ON = 0xFF;
void (*mode_exe)(uint16_t, uint8_t, color24*);
uint16_t animlen = 0;
uint8_t FLAGS = 0x00;

void setup()
{
	//setting correct pin modes
	DDRB = 0b11111111;
	DDRC = 0b11111111;
	DDRD = 0b11111010;
	//ir receiver setup
	init_receiver();
	//start timing
	tm_init();
	//prepare power supply
	powermanager();
	//set default animation
	mode_exe = &neon_scheme;
	//reset the timer
	tm_reset();
}

int main()
{
	//setup routine
	setup();
	//program loop
	while(1)
	{	
		
		if(PWR_ON) 
		{
			//pwm driving task
			softpwm();
		}
		//runs every 25ms
		if(tm_ms() > 25)
		{
			//reset timing
			tm_reset();
			//ir control task
			receiver();
			//color calculation task
			if(PWR_ON) coloriser();
		}
	}
	return 0;
}

void powermanager()
{
	if(PWR_ON)
	{
		//disable the device
		PWR_ON = 0x00;
		PORTB = 0x00;
		PORTC = 0x00;
		PORTD = 0x08;
	}
	else
	{
		//enable the device
		PWR_ON = 0xFF;
		PORTD = 0x00;
		//halt program, wait for capactitors
		//to charge up and provide stable power
		tm_halt(250);
	}
}

void softpwm()
{
	//software counters
	static uint8_t tm_val = 0;
	static uint8_t tm_half = 0;
	//value used as output compare
	uint8_t tmr = 0;
	#ifdef DEV_DIMM
	//swap between 255 and tmr_val for dimming
	tmr = ~(tm_val&tm_half);
	#else
	tmr = tm_val;
	#endif
	PORTB =
	(tmr<p6.b) | (tmr<p6.r) << 1 | (tmr<p6.g) << 2 |      //STUMP
	(tmr<p1.b) << 3 | (tmr<p1.r) << 4 | (tmr<p1.g) << 5 | //LOUNGE
	(tmr<p4.r) << 6 | (tmr<p4.g) << 7;		      //FLAMINGO (R,G)
	PORTC =
	(tmr<p2.b) | (tmr<p2.r) << 1 | (tmr<p2.g) << 2 |      //GARNISH
	(tmr<p3.b) << 3 | (tmr<p3.r) << 4 | (tmr<p3.g) << 5;  //GLASS
	PORTD =
	(1<<2) | (tmr<p4.b) << 4 |		              //FLAMINGO (B)
	(tmr<p5.b) << 5 | (tmr<p5.r) << 6 | (tmr<p5.g) << 7;  //LEAVES
	//incrementing and overflow counting
	if(tm_val == 0xFF) tm_half ^= 0xFF;
	tm_val++;
}

void coloriser(bool reset)
{
	//animation scroller
	static uint16_t animtimer = 0x00;
	if(reset)
	{
		animtimer = 0x00;
		return;
	}	
	animtimer >= animlen ? animtimer = 0 : animtimer++;

	//apply colors to the outputs
	if(FLAGS & FLAG_MODIFIER) {
		color24 temp;
		static_color(FLAGS & FLAG_INDEX, &temp);

		p1 = temp;
		p2 = temp;
		p3 = temp;
		p4 = temp;
		p5 = temp;
		p6 = temp;

		return;
	}

	mode_exe(animtimer, channel6, &p6);
	mode_exe(animtimer, channel5, &p5);
	mode_exe(animtimer, channel4, &p4);
	mode_exe(animtimer, channel3, &p3);
	mode_exe(animtimer, channel2, &p2);
	mode_exe(animtimer, channel1, &p1);
}

void set_color_index(uint8_t index, uint8_t *flags)
{
	uint8_t temp = *flags;
	temp &=~ FLAG_INDEX;
	temp |= index;
	*flags = temp;
}

void receiver()
{
	//ir communication tasks
	struct IR_Packet recvd;
	//check for new packets
	cli();
	uint8_t recvs = check_new_packet(&recvd);
	sei();
	//if nothing is received, quit function
	if(!recvs) return;
	//check address first
	if(recvd.addr != DEV_ADDR) return;
	//check if power is even on
	if(!PWR_ON && recvd.command != POWR_B) return;
	uint8_t modifier = FLAGS & FLAG_MODIFIER;
	//interpret which action to take
	switch(recvd.command)
	{
		case POWR_B:
			//power switch
			if(recvd.repeat) break;
			powermanager();
			break;
		case MENU_B:
			if(recvd.repeat) break;
			FLAGS ^= FLAG_MODIFIER;
			break;
		case NUM0_B:
			//static neon scheme
			if(modifier) {
				set_color_index(0, &FLAGS);
			} else {
				mode_exe = &neon_scheme;
			}
			break;
		case LTRC_B:
			//blinking neon parts
			if(!modifier) {
				animlen = 380;
				mode_exe = &neon_blink;
			}
			break;
		case NUM1_B:
			//hsv rainbow monolithic
			if(modifier) {
				set_color_index(1, &FLAGS);
			} else {
				animlen = 399;
				mode_exe = &hsv_sweep;
			}
			break;
		case NUM2_B:
			//hsv rainbow river
			if(modifier) {
				set_color_index(2, &FLAGS);
			} else {
				animlen = 399;
				mode_exe = &hsv_river;
			}
			break;
		case NUM3_B:
			//hsv rainbow volcano
			if(modifier) {
				set_color_index(3, &FLAGS);
			} else {
				animlen = 399;
				mode_exe = &hsv_volcano;
			}
			break;
		case NUM4_B:
			//pink-cyan
			if(modifier) {
				set_color_index(4, &FLAGS);
			} else {
				animlen = 220;
				mode_exe = &miami_sheen;
			}
			break;
		case NUM5_B:
			//purple-green
			if(modifier) {
				set_color_index(5, &FLAGS);
			} else {
				animlen = 220;
				mode_exe = &toxic_sheen;
			}
			break;
		case NUM6_B:
			//yellow-cyan
			if(modifier) {
				set_color_index(6, &FLAGS);
			} else {
				animlen = 220;
				mode_exe = &cyber_sheen;
			}
			break;
		case NUM7_B:
			//pong multicolor
			if(modifier) {
				set_color_index(7, &FLAGS);
			} else {
				animlen = 560;
				mode_exe = &pong_multicolor;
			}
			break;
		case NUM8_B:
			//pong magma
			if(modifier) {
				set_color_index(8, &FLAGS);
			} else {
				animlen = 140;
				mode_exe = &pong_magma;
			}
			break;
		case NUM9_B:
			//pong white
			if(modifier) {
				set_color_index(9, &FLAGS);
			} else {
				animlen = 140;
				mode_exe = &pong_white;
			}
			break;
		default:
			return;
	}
	//reset animation cycle
	if(recvd.command != MENU_B) coloriser(true);
}
