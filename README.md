
# LibEspArduino


## Making the Arduino Framwework bring to life with the FreeRTOS.

## Purpose:
Even if FreeRTOS is a real good choice to develop code for the ESP family , 
it is incompatible with the Arduino Framework, so  would be nice to have both.
So, download any Arduino Library, add to our project and make it work without any further work is the mission.


- Arduino Framework for the Esp [esp8266/Arduino](https://github.com/esp8266/Arduino)
- Espressif RTOS : [espressif/ESP8266_RTOS_SDK](https://github.com/espressif/ESP8266_RTOS_SDK)
- even better : [SuperHouse/esp-open-rtos](https://github.com/SuperHouse/esp-open-rtos/tree/master/examples)


## First Commit

Using *WeMos* as development board. Need other ? (Add specific src/arduino/variants/pins_arduino.h)

    git clone https://github.com/aleksmarcelo/LibEspArduino.git

    make flash 

The first code just ported the Wire and the SSD1306 libraries.


## Results
- Working pretty well
- The Arduino code was removed, adapted, commented. It needs to make the code cleaner and well written


## Help wanted to get all the others libraries working and clean the code.

 
The code is beeing developed in Netbeans and if you want to use a fresh new Flash Helper Tool, just install the plugin:
[https://github.com/aleksmarcelo/nbEspressifSuite]

##Enjoy !