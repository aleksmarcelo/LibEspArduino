

//This may be used to change user task stack size:
//#define CONT_STACKSIZE 4096
#include <Arduino.h>
//#include "Schedule.h"
extern "C" {
#include "ets_sys.h"
#include "os_type.h"
//#include "osapi.h"
//#include "mem.h"
//#include "user_interface.h"
#include "cont.h"
}

#define LOOP_TASK_PRIORITY 1
#define LOOP_QUEUE_SIZE    1

#define OPTIMISTIC_YIELD_TIME_US 16000

//struct rst_info resetInfo;

int atexit(void (*func)()) {
    return 0;
}

extern "C" void ets_update_cpu_frequency(int freqmhz);
void initVariant() __attribute__((weak));
void initVariant() {
}

extern void loop();
extern void setup();

void preloop_update_frequency() __attribute__((weak));
void preloop_update_frequency() {
#if defined(F_CPU) && (F_CPU == 160000000L)
    REG_SET_BIT(0x3ff00014, BIT(0));
    ets_update_cpu_frequency(160);
#endif
}

//cont_t g_cont __attribute__ ((aligned (16)));


extern "C" void esp_yield() {
//    if (cont_can_yield(&g_cont)) {
//        cont_yield(&g_cont);
//    }
}

extern "C" void esp_schedule() {
//    ets_post(LOOP_TASK_PRIORITY, 0, 0);
}

extern "C" void __yield() {
//    if (cont_can_yield(&g_cont)) {
//        esp_schedule();
//        esp_yield();
//    }
//    else {
//        panic();
//    }
}

extern "C" void yield(void) __attribute__ ((weak, alias("__yield")));

extern "C" void optimistic_yield(uint32_t interval_us) {
//    if (cont_can_yield(&g_cont) &&
//        (system_get_time() - g_micros_at_task_start) > interval_us)
//    {
//        yield();
//    }
}


//static void do_global_ctors(void) {
//    void (**p)(void) = &__init_array_end;
//    while (p != &__init_array_start)
//        (*--p)();
//}

extern "C" void __gdb_init() {}
extern "C" void gdb_init(void) __attribute__ ((weak, alias("__gdb_init")));

extern "C" void __gdb_do_break(){}
extern "C" void gdb_do_break(void) __attribute__ ((weak, alias("__gdb_do_break")));

