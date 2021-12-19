#ifndef COLOR_H
#define COLOR_H

#include <stdint.h>
#include <avr/pgmspace.h>

/*
These definitions assign bits in byte
to color channels. This method is used
to provide faster bitwise manipulation.
*/
#define channel1 0x01
#define channel2 0x02
#define channel3 0x04
#define channel4 0x08
#define channel5 0x10
#define channel6 0x20

typedef struct color24
{
	uint8_t r;
	uint8_t g;
	uint8_t b;
} color24;

void neon_scheme(uint16_t, const uint8_t, color24*);
void neon_blink(uint16_t, const uint8_t, color24*);
void hsv_sweep(uint16_t, const uint8_t, color24*);
void hsv_river(uint16_t, const uint8_t, color24*);
void hsv_volcano(uint16_t, const uint8_t, color24*);
void miami_sheen(uint16_t, const uint8_t, color24*);
void toxic_sheen(uint16_t, const uint8_t, color24*);
void cyber_sheen(uint16_t, const uint8_t, color24*);
void pong_multicolor(uint16_t, const uint8_t, color24*);
void pong_white(uint16_t, const uint8_t, color24*);
void pong_magma(uint16_t, const uint8_t, color24*);
#endif
