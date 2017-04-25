//#include <mem.h>
#include <string.h>
#include <espressif/esp_common.h>
#include <espressif/esp8266/esp8266.h>
#include "gpio.h"
#include <uartesp.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include "lwip/sockets.h"
#include <lwip/netdb.h>
#include "Arduino.h"

//extern "C" {


//}


//#include <Wire.h>  // Only needed for Arduino 1.6.5 and earlier

//#include "SSD1306.h" // alias for `#include "SSD1306Wire.h"`

const int gpio = 2;

bool bgotIP = false;
extern void displayInit();
extern void setupOLED();

ICACHE_FLASH_ATTR void blinkyTask(void *pvParameters) {

  while (1) {
    printf("GPIO:%i goes high\n", gpio);
    GPIO_OUTPUT_SET(gpio, 1);

    vTaskDelay(1000 / portTICK_RATE_MS);
    GPIO_OUTPUT_SET(gpio, 0);

    
    printf("GPIO:%i goes low\n", gpio);
    vTaskDelay(1200 / portTICK_RATE_MS);
  }
}


ICACHE_FLASH_ATTR void displayTask(void *pvParameters) {

  setupOLED();
  
  while (1) {
    vTaskDelay(100 / portTICK_RATE_MS);
    displayInit();
  }
  
}

void user_init() {
  
  UART_SetBaudrate(UART0, 115200);
  delay (100);
  printf("UART INITIALIZED \n");


  xTaskCreate(displayTask, (signed char *) "displayTask", 256, NULL, 2, NULL);

  xTaskCreate(blinkyTask, (signed char *) "blinkyTask", 256, NULL, 2, NULL);


}


//Método que passou a ser necessário !

/******************************************************************************
 * FunctionName : user_rf_cal_sector_set
 * Description  : SDK just reversed 4 sectors, used for rf init data and paramters.
 *                We add this function to force users to set rf cal sector, since
 *                we don't know which sector is free in user's application.
 *                sector map for last several sectors : ABCCC
 *                A : rf cal
 *                B : rf init data
 *                C : sdk parameters
 * Parameters   : none
 * Returns      : rf cal sector
 *******************************************************************************/
uint32 user_rf_cal_sector_set(void) {
  flash_size_map size_map = system_get_flash_size_map();
  uint32 rf_cal_sec = 0;

  switch (size_map) {
    case FLASH_SIZE_4M_MAP_256_256:
      rf_cal_sec = 128 - 5;
      break;

    case FLASH_SIZE_8M_MAP_512_512:
      rf_cal_sec = 256 - 5;
      break;

    case FLASH_SIZE_16M_MAP_512_512:
    case FLASH_SIZE_16M_MAP_1024_1024:
      rf_cal_sec = 512 - 5;
      break;

    case FLASH_SIZE_32M_MAP_512_512:
    case FLASH_SIZE_32M_MAP_1024_1024:
      rf_cal_sec = 1024 - 5;
      break;

    default:
      rf_cal_sec = 0;
      break;
  }

  return rf_cal_sec;
}