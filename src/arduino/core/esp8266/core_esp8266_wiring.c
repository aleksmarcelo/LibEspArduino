

#include "wiring_private.h"
#include "ets_sys.h"
//#include "osapi.h"
//#include "user_interface.h"
#include "cont.h"
#include "pgmspace.h"

extern void esp_schedule();
extern void esp_yield();

static os_timer_t delay_timer;
static os_timer_t micros_overflow_timer;
static uint32_t micros_at_last_overflow_tick = 0;
static uint32_t micros_overflow_count = 0;
#define ONCE 0
#define REPEAT 1

void delay_end(void* arg) {
    esp_schedule();
}

void delay(unsigned long ms) {
    if(ms) {
        os_timer_setfn(&delay_timer, (os_timer_func_t*) &delay_end, 0);
        os_timer_arm(&delay_timer, ms, ONCE);
    } else {
        esp_schedule();
    }
    esp_yield();
    if(ms) {
        os_timer_disarm(&delay_timer);
    }
}

void micros_overflow_tick(void* arg) {
    uint32_t m = system_get_time();
    if(m < micros_at_last_overflow_tick)
        ++micros_overflow_count;
    micros_at_last_overflow_tick = m;
}

 unsigned long  millis() {
    uint32_t m = system_get_time();
    uint32_t c = micros_overflow_count + ((m < micros_at_last_overflow_tick) ? 1 : 0);
    return c * 4294967 + m / 1000;
}

 unsigned long  micros() {
    return system_get_time();
}

void  delayMicroseconds(unsigned int us) {
    os_delay_us(us);
}


