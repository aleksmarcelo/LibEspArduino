###############################################################################
# Project Options
# @AleksMarcelo - 01-sep-2016
###############################################################################
TARGET  = espbin
#Will be used to load the correct pins_arduino 
BOARD   = d1
PORT    = COM10

#Compiler
CTAGS_PRJ    =
CXXTAGS_PRJ  =
#Link
LIB_PRJ       = m

#Directories to compile
ARDUINO_SRC  = src/arduino src/arduino/common src/arduino/core/esp8266 
ARDUINO_LIBS = ssd1306 wire 
MODULES	= driver   $(ARDUINO_SRC) $(addprefix src/arduino/libraries/,$(ARDUINO_LIBS) ) 
# which modules (subdirectories) of the project to include in compiling

ARDUINO_INC = $(ARDUINO_SRC) src/arduino/variants src/arduino/variants/$(BOARD)
EXTRA_INCDIR = include/driver include  $(SDK_BASE)/include $(ARDUINO_INC)
#-------------------------------------------------------------------------------
#                                SDK
#

#where to find gcc, g++ objcopy, addr2lne etc
XTENSA_TOOLS_DIR = c:/Espressif/xtensa-lx106-elf
XTENSA_TOOLS_ROOT = $(XTENSA_TOOLS_DIR)/bin

#RFreeRTOS SDK in use
SDK_BASE = c:/Espressif/ESP8266_RTOS_SDK

#where to find : esptool, gen_appbin etc
SDK_TOOLS = c:/Espressif/utils/ESP8266

###############################################################################

#With lucky we need to edit only the project.mk, not the common 
-include common.mk
