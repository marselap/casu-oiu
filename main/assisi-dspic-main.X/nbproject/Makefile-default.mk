#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../actuators/pwm.c ../actuators/peltier.c ../casu/main.c ../casu/initializeHardware.c ../casu/interrupts.c ../fft/fft.c ../peripheral/dma/dma0.c ../peripheral/dma/dma1.c ../peripheral/gpio/digitalIO.c ../peripheral/i2c/i2c2.c ../peripheral/i2c/i2c1.c ../peripheral/spi/spi1.c ../peripheral/spi/spi2.c ../peripheral/timer/timer2.c ../peripheral/timer/timer1.c ../peripheral/timer/timerFunctions.c ../peripheral/timer/timer3.c ../peripheral/timer/timer4.c ../peripheral/timer/timer5.c ../pic-to-beaglebone/pic2beaglebone.c ../sensors/adt7320/adt7320.c ../sensors/adt7420/adt7420.c ../sensors/adxl345/adxl345.c ../sensors/vcnl4000/proxiVCNL4000.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/470364171/pwm.o ${OBJECTDIR}/_ext/470364171/peltier.o ${OBJECTDIR}/_ext/761110993/main.o ${OBJECTDIR}/_ext/761110993/initializeHardware.o ${OBJECTDIR}/_ext/761110993/interrupts.o ${OBJECTDIR}/_ext/1360924389/fft.o ${OBJECTDIR}/_ext/1099009556/dma0.o ${OBJECTDIR}/_ext/1099009556/dma1.o ${OBJECTDIR}/_ext/290349517/digitalIO.o ${OBJECTDIR}/_ext/1099012534/i2c2.o ${OBJECTDIR}/_ext/1099012534/i2c1.o ${OBJECTDIR}/_ext/1099024072/spi1.o ${OBJECTDIR}/_ext/1099024072/spi2.o ${OBJECTDIR}/_ext/399099551/timer2.o ${OBJECTDIR}/_ext/399099551/timer1.o ${OBJECTDIR}/_ext/399099551/timerFunctions.o ${OBJECTDIR}/_ext/399099551/timer3.o ${OBJECTDIR}/_ext/399099551/timer4.o ${OBJECTDIR}/_ext/399099551/timer5.o ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o ${OBJECTDIR}/_ext/1728059366/adt7320.o ${OBJECTDIR}/_ext/1728060327/adt7420.o ${OBJECTDIR}/_ext/1733332440/adxl345.o ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/470364171/pwm.o.d ${OBJECTDIR}/_ext/470364171/peltier.o.d ${OBJECTDIR}/_ext/761110993/main.o.d ${OBJECTDIR}/_ext/761110993/initializeHardware.o.d ${OBJECTDIR}/_ext/761110993/interrupts.o.d ${OBJECTDIR}/_ext/1360924389/fft.o.d ${OBJECTDIR}/_ext/1099009556/dma0.o.d ${OBJECTDIR}/_ext/1099009556/dma1.o.d ${OBJECTDIR}/_ext/290349517/digitalIO.o.d ${OBJECTDIR}/_ext/1099012534/i2c2.o.d ${OBJECTDIR}/_ext/1099012534/i2c1.o.d ${OBJECTDIR}/_ext/1099024072/spi1.o.d ${OBJECTDIR}/_ext/1099024072/spi2.o.d ${OBJECTDIR}/_ext/399099551/timer2.o.d ${OBJECTDIR}/_ext/399099551/timer1.o.d ${OBJECTDIR}/_ext/399099551/timerFunctions.o.d ${OBJECTDIR}/_ext/399099551/timer3.o.d ${OBJECTDIR}/_ext/399099551/timer4.o.d ${OBJECTDIR}/_ext/399099551/timer5.o.d ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d ${OBJECTDIR}/_ext/1728059366/adt7320.o.d ${OBJECTDIR}/_ext/1728060327/adt7420.o.d ${OBJECTDIR}/_ext/1733332440/adxl345.o.d ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/470364171/pwm.o ${OBJECTDIR}/_ext/470364171/peltier.o ${OBJECTDIR}/_ext/761110993/main.o ${OBJECTDIR}/_ext/761110993/initializeHardware.o ${OBJECTDIR}/_ext/761110993/interrupts.o ${OBJECTDIR}/_ext/1360924389/fft.o ${OBJECTDIR}/_ext/1099009556/dma0.o ${OBJECTDIR}/_ext/1099009556/dma1.o ${OBJECTDIR}/_ext/290349517/digitalIO.o ${OBJECTDIR}/_ext/1099012534/i2c2.o ${OBJECTDIR}/_ext/1099012534/i2c1.o ${OBJECTDIR}/_ext/1099024072/spi1.o ${OBJECTDIR}/_ext/1099024072/spi2.o ${OBJECTDIR}/_ext/399099551/timer2.o ${OBJECTDIR}/_ext/399099551/timer1.o ${OBJECTDIR}/_ext/399099551/timerFunctions.o ${OBJECTDIR}/_ext/399099551/timer3.o ${OBJECTDIR}/_ext/399099551/timer4.o ${OBJECTDIR}/_ext/399099551/timer5.o ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o ${OBJECTDIR}/_ext/1728059366/adt7320.o ${OBJECTDIR}/_ext/1728060327/adt7420.o ${OBJECTDIR}/_ext/1733332440/adxl345.o ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o

# Source Files
SOURCEFILES=../actuators/pwm.c ../actuators/peltier.c ../casu/main.c ../casu/initializeHardware.c ../casu/interrupts.c ../fft/fft.c ../peripheral/dma/dma0.c ../peripheral/dma/dma1.c ../peripheral/gpio/digitalIO.c ../peripheral/i2c/i2c2.c ../peripheral/i2c/i2c1.c ../peripheral/spi/spi1.c ../peripheral/spi/spi2.c ../peripheral/timer/timer2.c ../peripheral/timer/timer1.c ../peripheral/timer/timerFunctions.c ../peripheral/timer/timer3.c ../peripheral/timer/timer4.c ../peripheral/timer/timer5.c ../pic-to-beaglebone/pic2beaglebone.c ../sensors/adt7320/adt7320.c ../sensors/adt7420/adt7420.c ../sensors/adxl345/adxl345.c ../sensors/vcnl4000/proxiVCNL4000.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP256MU810
MP_LINKER_FILE_OPTION=,--script=p33EP256MU810.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/470364171/pwm.o: ../actuators/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/470364171" 
	@${RM} ${OBJECTDIR}/_ext/470364171/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/470364171/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../actuators/pwm.c  -o ${OBJECTDIR}/_ext/470364171/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/470364171/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/470364171/pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/470364171/peltier.o: ../actuators/peltier.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/470364171" 
	@${RM} ${OBJECTDIR}/_ext/470364171/peltier.o.d 
	@${RM} ${OBJECTDIR}/_ext/470364171/peltier.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../actuators/peltier.c  -o ${OBJECTDIR}/_ext/470364171/peltier.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/470364171/peltier.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/470364171/peltier.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/761110993/main.o: ../casu/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/761110993" 
	@${RM} ${OBJECTDIR}/_ext/761110993/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/761110993/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../casu/main.c  -o ${OBJECTDIR}/_ext/761110993/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/761110993/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/761110993/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/761110993/initializeHardware.o: ../casu/initializeHardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/761110993" 
	@${RM} ${OBJECTDIR}/_ext/761110993/initializeHardware.o.d 
	@${RM} ${OBJECTDIR}/_ext/761110993/initializeHardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../casu/initializeHardware.c  -o ${OBJECTDIR}/_ext/761110993/initializeHardware.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/761110993/initializeHardware.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/761110993/initializeHardware.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/761110993/interrupts.o: ../casu/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/761110993" 
	@${RM} ${OBJECTDIR}/_ext/761110993/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/761110993/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../casu/interrupts.c  -o ${OBJECTDIR}/_ext/761110993/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/761110993/interrupts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/761110993/interrupts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360924389/fft.o: ../fft/fft.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360924389" 
	@${RM} ${OBJECTDIR}/_ext/1360924389/fft.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360924389/fft.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fft/fft.c  -o ${OBJECTDIR}/_ext/1360924389/fft.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360924389/fft.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360924389/fft.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099009556/dma0.o: ../peripheral/dma/dma0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099009556" 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/dma/dma0.c  -o ${OBJECTDIR}/_ext/1099009556/dma0.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099009556/dma0.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099009556/dma0.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099009556/dma1.o: ../peripheral/dma/dma1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099009556" 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/dma/dma1.c  -o ${OBJECTDIR}/_ext/1099009556/dma1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099009556/dma1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099009556/dma1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/290349517/digitalIO.o: ../peripheral/gpio/digitalIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/290349517" 
	@${RM} ${OBJECTDIR}/_ext/290349517/digitalIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/290349517/digitalIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/gpio/digitalIO.c  -o ${OBJECTDIR}/_ext/290349517/digitalIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/290349517/digitalIO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/290349517/digitalIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099012534/i2c2.o: ../peripheral/i2c/i2c2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099012534" 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/i2c/i2c2.c  -o ${OBJECTDIR}/_ext/1099012534/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099012534/i2c2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099012534/i2c2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099012534/i2c1.o: ../peripheral/i2c/i2c1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099012534" 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/i2c/i2c1.c  -o ${OBJECTDIR}/_ext/1099012534/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099012534/i2c1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099012534/i2c1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099024072/spi1.o: ../peripheral/spi/spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099024072" 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/spi/spi1.c  -o ${OBJECTDIR}/_ext/1099024072/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099024072/spi1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099024072/spi1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099024072/spi2.o: ../peripheral/spi/spi2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099024072" 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/spi/spi2.c  -o ${OBJECTDIR}/_ext/1099024072/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099024072/spi2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099024072/spi2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer2.o: ../peripheral/timer/timer2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer2.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer2.c  -o ${OBJECTDIR}/_ext/399099551/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer1.o: ../peripheral/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer1.c  -o ${OBJECTDIR}/_ext/399099551/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timerFunctions.o: ../peripheral/timer/timerFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timerFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timerFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timerFunctions.c  -o ${OBJECTDIR}/_ext/399099551/timerFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timerFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timerFunctions.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer3.o: ../peripheral/timer/timer3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer3.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer3.c  -o ${OBJECTDIR}/_ext/399099551/timer3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer3.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer3.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer4.o: ../peripheral/timer/timer4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer4.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer4.c  -o ${OBJECTDIR}/_ext/399099551/timer4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer4.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer4.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer5.o: ../peripheral/timer/timer5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer5.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer5.c  -o ${OBJECTDIR}/_ext/399099551/timer5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer5.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer5.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/383178330/pic2beaglebone.o: ../pic-to-beaglebone/pic2beaglebone.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/383178330" 
	@${RM} ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d 
	@${RM} ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pic-to-beaglebone/pic2beaglebone.c  -o ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728059366/adt7320.o: ../sensors/adt7320/adt7320.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728059366" 
	@${RM} ${OBJECTDIR}/_ext/1728059366/adt7320.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728059366/adt7320.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/adt7320/adt7320.c  -o ${OBJECTDIR}/_ext/1728059366/adt7320.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728059366/adt7320.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728059366/adt7320.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728060327/adt7420.o: ../sensors/adt7420/adt7420.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728060327" 
	@${RM} ${OBJECTDIR}/_ext/1728060327/adt7420.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728060327/adt7420.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/adt7420/adt7420.c  -o ${OBJECTDIR}/_ext/1728060327/adt7420.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728060327/adt7420.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728060327/adt7420.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1733332440/adxl345.o: ../sensors/adxl345/adxl345.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1733332440" 
	@${RM} ${OBJECTDIR}/_ext/1733332440/adxl345.o.d 
	@${RM} ${OBJECTDIR}/_ext/1733332440/adxl345.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/adxl345/adxl345.c  -o ${OBJECTDIR}/_ext/1733332440/adxl345.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1733332440/adxl345.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1733332440/adxl345.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o: ../sensors/vcnl4000/proxiVCNL4000.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1035759892" 
	@${RM} ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d 
	@${RM} ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/vcnl4000/proxiVCNL4000.c  -o ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/470364171/pwm.o: ../actuators/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/470364171" 
	@${RM} ${OBJECTDIR}/_ext/470364171/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/470364171/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../actuators/pwm.c  -o ${OBJECTDIR}/_ext/470364171/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/470364171/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/470364171/pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/470364171/peltier.o: ../actuators/peltier.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/470364171" 
	@${RM} ${OBJECTDIR}/_ext/470364171/peltier.o.d 
	@${RM} ${OBJECTDIR}/_ext/470364171/peltier.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../actuators/peltier.c  -o ${OBJECTDIR}/_ext/470364171/peltier.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/470364171/peltier.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/470364171/peltier.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/761110993/main.o: ../casu/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/761110993" 
	@${RM} ${OBJECTDIR}/_ext/761110993/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/761110993/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../casu/main.c  -o ${OBJECTDIR}/_ext/761110993/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/761110993/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/761110993/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/761110993/initializeHardware.o: ../casu/initializeHardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/761110993" 
	@${RM} ${OBJECTDIR}/_ext/761110993/initializeHardware.o.d 
	@${RM} ${OBJECTDIR}/_ext/761110993/initializeHardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../casu/initializeHardware.c  -o ${OBJECTDIR}/_ext/761110993/initializeHardware.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/761110993/initializeHardware.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/761110993/initializeHardware.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/761110993/interrupts.o: ../casu/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/761110993" 
	@${RM} ${OBJECTDIR}/_ext/761110993/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/761110993/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../casu/interrupts.c  -o ${OBJECTDIR}/_ext/761110993/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/761110993/interrupts.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/761110993/interrupts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360924389/fft.o: ../fft/fft.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360924389" 
	@${RM} ${OBJECTDIR}/_ext/1360924389/fft.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360924389/fft.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../fft/fft.c  -o ${OBJECTDIR}/_ext/1360924389/fft.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360924389/fft.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360924389/fft.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099009556/dma0.o: ../peripheral/dma/dma0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099009556" 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/dma/dma0.c  -o ${OBJECTDIR}/_ext/1099009556/dma0.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099009556/dma0.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099009556/dma0.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099009556/dma1.o: ../peripheral/dma/dma1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099009556" 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099009556/dma1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/dma/dma1.c  -o ${OBJECTDIR}/_ext/1099009556/dma1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099009556/dma1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099009556/dma1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/290349517/digitalIO.o: ../peripheral/gpio/digitalIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/290349517" 
	@${RM} ${OBJECTDIR}/_ext/290349517/digitalIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/290349517/digitalIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/gpio/digitalIO.c  -o ${OBJECTDIR}/_ext/290349517/digitalIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/290349517/digitalIO.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/290349517/digitalIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099012534/i2c2.o: ../peripheral/i2c/i2c2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099012534" 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/i2c/i2c2.c  -o ${OBJECTDIR}/_ext/1099012534/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099012534/i2c2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099012534/i2c2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099012534/i2c1.o: ../peripheral/i2c/i2c1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099012534" 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099012534/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/i2c/i2c1.c  -o ${OBJECTDIR}/_ext/1099012534/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099012534/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099012534/i2c1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099024072/spi1.o: ../peripheral/spi/spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099024072" 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/spi/spi1.c  -o ${OBJECTDIR}/_ext/1099024072/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099024072/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099024072/spi1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1099024072/spi2.o: ../peripheral/spi/spi2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1099024072" 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1099024072/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/spi/spi2.c  -o ${OBJECTDIR}/_ext/1099024072/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1099024072/spi2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1099024072/spi2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer2.o: ../peripheral/timer/timer2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer2.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer2.c  -o ${OBJECTDIR}/_ext/399099551/timer2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer1.o: ../peripheral/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer1.c  -o ${OBJECTDIR}/_ext/399099551/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timerFunctions.o: ../peripheral/timer/timerFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timerFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timerFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timerFunctions.c  -o ${OBJECTDIR}/_ext/399099551/timerFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timerFunctions.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timerFunctions.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer3.o: ../peripheral/timer/timer3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer3.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer3.c  -o ${OBJECTDIR}/_ext/399099551/timer3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer3.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer4.o: ../peripheral/timer/timer4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer4.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer4.c  -o ${OBJECTDIR}/_ext/399099551/timer4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer4.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer4.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/399099551/timer5.o: ../peripheral/timer/timer5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399099551" 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer5.o.d 
	@${RM} ${OBJECTDIR}/_ext/399099551/timer5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../peripheral/timer/timer5.c  -o ${OBJECTDIR}/_ext/399099551/timer5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/399099551/timer5.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/399099551/timer5.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/383178330/pic2beaglebone.o: ../pic-to-beaglebone/pic2beaglebone.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/383178330" 
	@${RM} ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d 
	@${RM} ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pic-to-beaglebone/pic2beaglebone.c  -o ${OBJECTDIR}/_ext/383178330/pic2beaglebone.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/383178330/pic2beaglebone.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728059366/adt7320.o: ../sensors/adt7320/adt7320.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728059366" 
	@${RM} ${OBJECTDIR}/_ext/1728059366/adt7320.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728059366/adt7320.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/adt7320/adt7320.c  -o ${OBJECTDIR}/_ext/1728059366/adt7320.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728059366/adt7320.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728059366/adt7320.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728060327/adt7420.o: ../sensors/adt7420/adt7420.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728060327" 
	@${RM} ${OBJECTDIR}/_ext/1728060327/adt7420.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728060327/adt7420.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/adt7420/adt7420.c  -o ${OBJECTDIR}/_ext/1728060327/adt7420.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728060327/adt7420.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728060327/adt7420.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1733332440/adxl345.o: ../sensors/adxl345/adxl345.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1733332440" 
	@${RM} ${OBJECTDIR}/_ext/1733332440/adxl345.o.d 
	@${RM} ${OBJECTDIR}/_ext/1733332440/adxl345.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/adxl345/adxl345.c  -o ${OBJECTDIR}/_ext/1733332440/adxl345.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1733332440/adxl345.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1733332440/adxl345.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o: ../sensors/vcnl4000/proxiVCNL4000.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1035759892" 
	@${RM} ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d 
	@${RM} ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sensors/vcnl4000/proxiVCNL4000.c  -o ${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1035759892/proxiVCNL4000.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  /opt/microchip/xc16/v1.21/lib/libdsp-elf.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    /opt/microchip/xc16/v1.21/lib/libdsp-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  /opt/microchip/xc16/v1.21/lib/libdsp-elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    /opt/microchip/xc16/v1.21/lib/libdsp-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/assisi-dspic-main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
