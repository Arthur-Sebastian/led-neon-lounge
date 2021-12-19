/*
 * time.h
 *
 * Created: 26.01.2020 16:51:40
 *  Author: Artur
*/ 
#ifndef TIME_H_
#define TIME_H_

#include <stdint.h>
#include <avr/interrupt.h>

/*
Comment the line below to disable
the switching flag for every 2nd
cycle. Useful for PWM dimming.
*/
//#define HALF_COUNTER
/*
Initialises the timer. Enables
interrupts on TIMER0.
*/
void tm_init();
/*
Returns a number of milliseconds
passed since last reset or timer
overflow counter overflow. Returns
a maximum of 4192.
*/
uint16_t tm_ms();
/*
Executes a dummy loop task until
a number of milliseconds passes.
Max argument size is 4192. Passing
anything over this value results
in an endless halt.
*/
void tm_halt(uint16_t ms);
/*
Resets the timer0 overflow counter
value. Useful to control the timing
relative to some other point in code.
*/
void tm_reset();

#ifdef HALF_COUNTER
/*
A flag indicating every 2nd timer cycle.
Alternates between 0xFF and 0x00.
*/
extern uint8_t tm_half;
#endif

#endif /* TIME_H_ */
