
#define ARDUINO_MAIN
#include "Arduino.h"


     ICACHE_RODATA_ATTR void  pinMode(uint8_t pin, uint8_t val) {
      switch (val) {
        case INPUT:
          GPIO_AS_INPUT(pin);
          break;

        case OUTPUT:
          GPIO_AS_OUTPUT(pin);
          break;
      }
    }

     int ICACHE_RODATA_ATTR digitalRead(uint8_t pin) {
      return GPIO_INPUT_GET(pin);
    }

     void ICACHE_RODATA_ATTR digitalWrite(uint8_t pin, uint8_t val) {
      //TODO: identificar pq no orginal há o stop do pwm
      //pwm_stop_pin(pin);

      GPIO_OUTPUT_SET(pin, val);
    }