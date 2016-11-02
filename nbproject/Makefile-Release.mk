#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=Cygwin-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/driver/gpio.o \
	${OBJECTDIR}/driver/oleddemo.o \
	${OBJECTDIR}/driver/uart.o \
	${OBJECTDIR}/driver/user_main.o \
	${OBJECTDIR}/src/arduino/common/noniso.o \
	${OBJECTDIR}/src/arduino/core/esp8266/Print.o \
	${OBJECTDIR}/src/arduino/core/esp8266/Stream.o \
	${OBJECTDIR}/src/arduino/core/esp8266/WString.o \
	${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_main.o \
	${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_noniso.o \
	${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_si2c.o \
	${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_wiring.o \
	${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_wiring_digital.o \
	${OBJECTDIR}/src/arduino/core/esp8266/pgmspace.o \
	${OBJECTDIR}/src/arduino/libraries/Time/DateStrings.o \
	${OBJECTDIR}/src/arduino/libraries/Time/Time.o \
	${OBJECTDIR}/src/arduino/libraries/Wire/Wire.o \
	${OBJECTDIR}/src/arduino/libraries/ssd1306/OLEDDisplay.o \
	${OBJECTDIR}/src/arduino/libraries/ssd1306/OLEDDisplayUi.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libesparduino.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libesparduino.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libesparduino ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/driver/gpio.o: driver/gpio.c
	${MKDIR} -p ${OBJECTDIR}/driver
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/driver/gpio.o driver/gpio.c

${OBJECTDIR}/driver/oleddemo.o: driver/oleddemo.cpp
	${MKDIR} -p ${OBJECTDIR}/driver
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/driver/oleddemo.o driver/oleddemo.cpp

${OBJECTDIR}/driver/uart.o: driver/uart.c
	${MKDIR} -p ${OBJECTDIR}/driver
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/driver/uart.o driver/uart.c

${OBJECTDIR}/driver/user_main.o: driver/user_main.c
	${MKDIR} -p ${OBJECTDIR}/driver
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/driver/user_main.o driver/user_main.c

${OBJECTDIR}/src/arduino/common/noniso.o: src/arduino/common/noniso.c
	${MKDIR} -p ${OBJECTDIR}/src/arduino/common
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/common/noniso.o src/arduino/common/noniso.c

${OBJECTDIR}/src/arduino/core/esp8266/Print.o: src/arduino/core/esp8266/Print.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/Print.o src/arduino/core/esp8266/Print.cpp

${OBJECTDIR}/src/arduino/core/esp8266/Stream.o: src/arduino/core/esp8266/Stream.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/Stream.o src/arduino/core/esp8266/Stream.cpp

${OBJECTDIR}/src/arduino/core/esp8266/WString.o: src/arduino/core/esp8266/WString.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/WString.o src/arduino/core/esp8266/WString.cpp

${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_main.o: src/arduino/core/esp8266/core_esp8266_main.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_main.o src/arduino/core/esp8266/core_esp8266_main.cpp

${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_noniso.o: src/arduino/core/esp8266/core_esp8266_noniso.c
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_noniso.o src/arduino/core/esp8266/core_esp8266_noniso.c

${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_si2c.o: src/arduino/core/esp8266/core_esp8266_si2c.c
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_si2c.o src/arduino/core/esp8266/core_esp8266_si2c.c

${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_wiring.o: src/arduino/core/esp8266/core_esp8266_wiring.c
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_wiring.o src/arduino/core/esp8266/core_esp8266_wiring.c

${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_wiring_digital.o: src/arduino/core/esp8266/core_esp8266_wiring_digital.c
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/core_esp8266_wiring_digital.o src/arduino/core/esp8266/core_esp8266_wiring_digital.c

${OBJECTDIR}/src/arduino/core/esp8266/pgmspace.o: src/arduino/core/esp8266/pgmspace.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/core/esp8266
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/core/esp8266/pgmspace.o src/arduino/core/esp8266/pgmspace.cpp

${OBJECTDIR}/src/arduino/libraries/Time/DateStrings.o: src/arduino/libraries/Time/DateStrings.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/libraries/Time
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/libraries/Time/DateStrings.o src/arduino/libraries/Time/DateStrings.cpp

${OBJECTDIR}/src/arduino/libraries/Time/Time.o: src/arduino/libraries/Time/Time.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/libraries/Time
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/libraries/Time/Time.o src/arduino/libraries/Time/Time.cpp

${OBJECTDIR}/src/arduino/libraries/Wire/Wire.o: src/arduino/libraries/Wire/Wire.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/libraries/Wire
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/libraries/Wire/Wire.o src/arduino/libraries/Wire/Wire.cpp

${OBJECTDIR}/src/arduino/libraries/ssd1306/OLEDDisplay.o: src/arduino/libraries/ssd1306/OLEDDisplay.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/libraries/ssd1306
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/libraries/ssd1306/OLEDDisplay.o src/arduino/libraries/ssd1306/OLEDDisplay.cpp

${OBJECTDIR}/src/arduino/libraries/ssd1306/OLEDDisplayUi.o: src/arduino/libraries/ssd1306/OLEDDisplayUi.cpp
	${MKDIR} -p ${OBJECTDIR}/src/arduino/libraries/ssd1306
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/arduino/libraries/ssd1306/OLEDDisplayUi.o src/arduino/libraries/ssd1306/OLEDDisplayUi.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
