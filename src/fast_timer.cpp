/*
 * time.cpp
 *
 * Built for 8MHz clock speed
 *
 * Created: 26.01.2020 16:54:07
 *  Author: Artur
*/ 

#include "fast_timer.h"

uint16_t _ctr = 0;
uint8_t tm_half = 0;

void tm_init()
{
	//initialise counter
	_ctr = 0;
	//enable TIMER0 interrupt
	TIMSK0 |= (1<<TOIE0);
	//start TIMER0 @ 1MHz
	TCCR0B = (TCCR0B&0b11111000) | (1<<CS01);
	//enable global interrupts
	sei();
}

ISR(TIMER0_OVF_vect)
{
	//increment overflow counter
	_ctr++;
	#ifdef HALF_COUNTER
	tm_half ^= 0xFF;
	#endif
}

uint16_t tm_ms()
{
	//store status register
	uint8_t _srg = SREG;
	//disable interrupts
	cli();
	//1 cycle -> 256us @ 1MHz
	uint16_t _ret = _ctr >> 2;
	//restore status register
	SREG = _srg;
	return _ret;
}

void tm_halt(uint16_t ms)
{
	//store counter status
	uint16_t _str = _ctr;
	_ctr = 0;
	//wait until time passes
	while(tm_ms() < ms);;
	//restore counter, exit
	_ctr = _str;
}

void tm_reset()
{
	//reset the counter
	_ctr = 0;
}


