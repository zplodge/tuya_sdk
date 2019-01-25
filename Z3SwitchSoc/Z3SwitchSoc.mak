# Architecture directories
ARCHITECTURE_DIR = efr32
BUILD_DIR = build
OUTPUT_DIR = $(BUILD_DIR)/$(ARCHITECTURE_DIR)
LST_DIR = lst
PROJECTNAME = Z3SwitchSoc

# Stack and submodule directories
GLOBAL_BASE_DIR     = ../../../platform/base/hal/..

SOURCE_FILES = \
../../../platform/base/hal/../../emdrv/dmadrv/src/dmadrv.c \
../../../platform/base/hal/../../emdrv/gpiointerrupt/src/gpiointerrupt.c \
../../../platform/base/hal/../../emdrv/rtcdrv/src/rtcdriver.c \
../../../platform/base/hal/../../emdrv/sleep/src/sleep.c \
../../../platform/base/hal/../../emdrv/tempdrv/src/tempdrv.c \
../../../platform/base/hal/../../emdrv/ustimer/src/ustimer.c \
../../../platform/base/hal/../../emlib/src/em_adc.c \
../../../platform/base/hal/../../emlib/src/em_cmu.c \
../../../platform/base/hal/../../emlib/src/em_core.c \
../../../platform/base/hal/../../emlib/src/em_cryotimer.c \
../../../platform/base/hal/../../emlib/src/em_emu.c \
../../../platform/base/hal/../../emlib/src/em_gpio.c \
../../../platform/base/hal/../../emlib/src/em_i2c.c \
../../../platform/base/hal/../../emlib/src/em_ldma.c \
../../../platform/base/hal/../../emlib/src/em_leuart.c \
../../../platform/base/hal/../../emlib/src/em_msc.c \
../../../platform/base/hal/../../emlib/src/em_prs.c \
../../../platform/base/hal/../../emlib/src/em_rmu.c \
../../../platform/base/hal/../../emlib/src/em_rtcc.c \
../../../platform/base/hal/../../emlib/src/em_system.c \
../../../platform/base/hal/../../emlib/src/em_timer.c \
../../../platform/base/hal/../../emlib/src/em_usart.c \
../../../platform/base/hal/../../emlib/src/em_wdog.c \
../../../platform/base/hal/../../Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c \
./afv2-bookkeeping.c \
./call-command-handler.c \
./callback-stub.c \
./stack-handler-stub.c \
../../../protocol/zigbee/app/framework/util/af-event.c \
../../../protocol/zigbee/app/framework/util/af-main-common.c \
../../../protocol/zigbee/app/framework/util/af-main-soc.c \
../../../protocol/zigbee/app/framework/security/af-node.c \
../../../protocol/zigbee/app/framework/security/af-security-common.c \
../../../protocol/zigbee/app/framework/security/af-trust-center.c \
../../../protocol/zigbee/app/framework/util/attribute-size.c \
../../../protocol/zigbee/app/framework/util/attribute-storage.c \
../../../protocol/zigbee/app/framework/util/attribute-table.c \
../../../platform/base/hal/micro/cortexm3/efm32/assert-crash-handlers.c \
../../../platform/base/hal/micro/cortexm3/efm32/button.c \
../../../platform/base/hal/plugin/buzzer/buzzer-efr32.c \
../../../protocol/zigbee/app/framework/util/client-api.c \
../../../protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
../../../platform/base/hal/micro/generic/crc.c \
../../../protocol/zigbee/app/framework/security/crypto-state.c \
../../../platform/base/hal/micro/cortexm3/efm32/cstartup-common.c \
../../../platform/base/hal/micro/cortexm3/efm32/diagnostic.c \
../../../protocol/zigbee/app/framework/../../stack/config/ember-configuration.c \
../../../platform/base/hal/micro/generic/endian.c \
../../../platform/base/hal/micro/cortexm3/efm32/faults-v7m.s79 \
../../../platform/base/hal/micro/cortexm3/efm32/isr-stubs.s79 \
../../../platform/base/hal/micro/cortexm3/efm32/led.c \
../../../protocol/zigbee/app/framework/../util/common/library.c \
../../../platform/base/hal/micro/generic/mem-util.c \
../../../platform/base/hal/micro/cortexm3/efm32/mfg-token.c \
../../../platform/base/hal/micro/cortexm3/efm32/micro-common.c \
../../../platform/base/hal/micro/cortexm3/efm32/micro.c \
../../../platform/base/hal/micro/cortexm3/efm32/mpu.c \
./cli.c \
../../../protocol/zigbee/app/framework/cli/core-cli.c \
../../../protocol/zigbee/app/framework/cli/network-cli.c \
../../../protocol/zigbee/app/framework/cli/option-cli.c \
../../../protocol/zigbee/app/framework/cli/plugin-cli.c \
../../../protocol/zigbee/app/framework/util/print.c \
../../../protocol/zigbee/app/framework/util/print-formatter.c \
../../../protocol/zigbee/app/framework/util/process-cluster-message.c \
../../../protocol/zigbee/app/framework/util/process-global-message.c \
../../../platform/base/hal/micro/generic/random.c \
../../../protocol/zigbee/app/framework/../util/security/security-address-cache.c \
../../../protocol/zigbee/app/framework/cli/security-cli.c \
../../../platform/base/hal/plugin/serial/serial.c \
../../../platform/base/hal/plugin/serial/cortexm/efm32/com.c \
../../../protocol/zigbee/app/framework/util/service-discovery-common.c \
../../../protocol/zigbee/app/framework/util/service-discovery-soc.c \
../../../platform/base/hal/ember-base-configuration.c \
../../../platform/base/hal/micro/cortexm3/efm32/sleep-efm32.c \
../../../platform/base/hal/micro/generic/token-def.c \
../../../platform/base/hal/micro/cortexm3/efm32/token.c \
../../../platform/base/hal/micro/cortexm3/efm32/ext-device.c \
../../../protocol/zigbee/app/framework/util/message.c \
../../../protocol/zigbee/app/framework/util/multi-network.c \
../../../protocol/zigbee/app/framework/util/time-util.c \
../../../protocol/zigbee/app/framework/util/util.c \
../../../protocol/zigbee/app/framework/cli/zcl-cli.c \
../../../protocol/zigbee/app/framework/cli/zdo-cli.c \
../../../protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
../../../protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-library.c \
  ../../../platform/base/hal/micro/cortexm3/efm32/bootloader-interface-app.c \
  ../../../platform/base/hal/micro/cortexm3/efm32/bootloader-interface.c \
  ../../../platform/base/hal/plugin/serial/cortexm/efm32/com.c \
  ../../../platform/bootloader/api/btl_interface.c \
  ../../../platform/bootloader/api/btl_interface_storage.c \
  ../../../platform/emdrv/uartdrv/src/uartdrv.c \
 \
../../../platform\base\hal\plugin\adc\adc-efr32.c \
../../../platform\base\hal\plugin\antenna-stub\antenna-stub.c \
../../../protocol\zigbee\app\framework\plugin\basic\basic.c \
../../../platform\radio\rail_lib\plugin\coexistence\protocol\ieee802154\coexistence-802154.c \
../../../platform\radio\rail_lib\plugin\coexistence\hal\efr32\coexistence-hal.c \
../../../platform\radio\rail_lib\plugin\coexistence\hal\efr32\coexistence-directional-priority.c \
../../../platform\radio\rail_lib\plugin\coexistence\common\coexistence.c \
../../../protocol\zigbee\app\framework\plugin\counters\counters-cli.c \
../../../protocol\zigbee\app\framework\plugin\counters\counters-ota.c \
../../../protocol\zigbee\app\framework\plugin\counters\counters-soc.c \
../../../platform\base\hal\plugin\debug\rtt\SEGGER_RTT.c \
../../../platform\base\hal\plugin\debug-jtag\debug-jtag-efr32.c \
../../../util\plugin\plugin-common\eeprom\eeprom.c \
../../../util\plugin\plugin-afv2\eeprom\eeprom-afv2.c \
../../../util\plugin\plugin-common\eeprom\eeprom-cli.c \
../../../platform\base\hal\plugin\serial\ember-printf.c \
../../../protocol\zigbee\app\framework\plugin\end-device-support\end-device-support.c \
../../../protocol\zigbee\app\framework\plugin\end-device-support\end-device-move.c \
../../../protocol\zigbee\app\framework\plugin\end-device-support\end-device-support-cli.c \
../../../protocol\zigbee\app\framework\plugin\end-device-support\polling-common.c \
../../../protocol\zigbee\app\framework\plugin\end-device-support\polling-soc.c \
../../../protocol\zigbee\app\framework\plugin\find-and-bind-initiator\find-and-bind-initiator.c \
../../../protocol\zigbee\app\framework\plugin\find-and-bind-initiator\find-and-bind-initiator-cli.c \
../../../protocol\zigbee\app\framework\plugin\form-and-join\form-and-join-afv2.c \
../../../protocol\zigbee\app\util\common\form-and-join.c \
../../../protocol\zigbee\app\util\common\form-and-join-node-adapter.c \
../../../platform\base\hal\micro\cortexm3\efm32\hal-config.c \
../../../platform\base\hal\micro\cortexm3\efm32\hal-config-gpio.c \
../../../protocol\zigbee\app\framework\plugin\heartbeat\heartbeat.c \
../../../protocol\zigbee\app\framework\plugin\identify\identify.c \
../../../protocol\zigbee\app\framework\plugin\identify\identify-cli.c \
../../../protocol\zigbee\app\framework\plugin-soc\idle-sleep\idle-sleep.c \
../../../protocol\zigbee\app\framework\plugin-soc\idle-sleep\idle-sleep-cli.c \
../../../protocol\zigbee\app\framework\plugin-soc\idle-sleep\idle-sleep-soc.c \
../../../protocol\zigbee\app\framework\plugin\interpan\interpan.c \
../../../protocol\zigbee\app\framework\plugin\interpan\interpan-cli.c \
../../../protocol\zigbee\app\framework\plugin\interpan\interpan-soc.c \
../../../protocol\zigbee\app\framework\plugin\network-steering\network-steering.c \
../../../protocol\zigbee\app\framework\plugin\network-steering\network-steering-cli.c \
../../../protocol\zigbee\app\framework\plugin\network-steering\network-steering-soc.c \
../../../protocol\zigbee\app\framework\plugin\scan-dispatch\scan-dispatch.c \
../../../protocol\zigbee\app\framework\plugin\scenes-client\scenes-client.c \
../../../platform\base\hal\plugin\serial\serial.c \
../../../platform\base\hal\plugin\sim-eeprom1\sim-eeprom.c \
../../../protocol\zigbee\app\framework\plugin\simple-main\simple-main.c \
../../../protocol\zigbee\app\framework\plugin\update-tc-link-key\update-tc-link-key.c \
../../../protocol\zigbee\app\framework\plugin\update-tc-link-key\update-tc-link-key-cli.c \
../../../protocol\zigbee\app\framework\plugin\zll-commissioning-client\zll-commissioning-client.c \
../../../protocol\zigbee\app\framework\plugin\zll-commissioning-common\zll-commissioning-common.c \
../../../protocol\zigbee\app\framework\plugin\zll-commissioning-common\zll-commissioning-cli.c \
../../../protocol\zigbee\app\framework\plugin\zll-scenes-client\zll-scenes-client.c \
../../../protocol\zigbee\app\framework\plugin\zll-utility-client\zll-utility-client.c \
 \
../../../app/builder/Z3SwitchSoc/Z3SwitchSoc_callbacks.c \ \

LIB_FILES = \
 \
../../../protocol\zigbee\build\binding-table-library-cortexm3-gcc-efr32mg12p-rail\binding-table-library.a \
../../../protocol\zigbee\build\cbke-163k1-stub-library-cortexm3-gcc-efr32mg12p-rail\cbke-163k1-stub-library.a \
../../../protocol\zigbee\build\cbke-283k1-stub-library-cortexm3-gcc-efr32mg12p-rail\cbke-283k1-stub-library.a \
../../../protocol\zigbee\build\cbke-stub-library-cortexm3-gcc-efr32mg12p-rail\cbke-stub-library.a \
../../../protocol\zigbee\build\cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg12p-rail\cbke-library-dsa-sign-stub.a \
../../../protocol\zigbee\build\cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg12p-rail\cbke-library-dsa-verify-stub.a \
../../../protocol\zigbee\build\cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg12p-rail\cbke-library-dsa-verify-283k1-stub.a \
../../../protocol\zigbee\build\debug-basic-library-cortexm3-gcc-efr32mg12p-rail\debug-basic-library.a \
../../../protocol\zigbee\build\debug-extended-stub-library-cortexm3-gcc-efr32mg12p-rail\debug-extended-stub-library.a \
../../../protocol\zigbee\build\end-device-bind-stub-library-cortexm3-gcc-efr32mg12p-rail\end-device-bind-stub-library.a \
../../../protocol\zigbee\build\gp-stub-library-cortexm3-gcc-efr32mg12p-rail\gp-stub-library.a \
../../../protocol\zigbee\build\hal-library-cortexm3-gcc-efr32mg12p-rail\hal-library.a \
../../../protocol\zigbee\build\install-code-library-cortexm3-gcc-efr32mg12p-rail\install-code-library.a \
../../../protocol\zigbee\build\multi-network-stub-library-cortexm3-gcc-efr32mg12p-rail\multi-network-stub-library.a \
../../../protocol\zigbee\build\packet-validate-library-cortexm3-gcc-efr32mg12p-rail\packet-validate-library.a \
../../../platform\radio\rail_lib\autogen\librail_release\librail_efr32xg12_gcc_release.a \
../../../protocol\zigbee\build\security-library-core-cortexm3-gcc-efr32mg12p-rail\security-library-core.a \
../../../protocol\zigbee\build\security-library-link-keys-stub-cortexm3-gcc-efr32mg12p-rail\security-library-link-keys-stub.a \
../../../protocol\zigbee\build\sim-eeprom1-library-cortexm3-gcc-efr32mg12p-rail\sim-eeprom1-library.a \
../../../protocol\zigbee\build\zigbee-pro-leaf-stack-cortexm3-gcc-efr32mg12p-rail\zigbee-pro-leaf-stack.a \
../../../protocol\zigbee\build\zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg12p-rail\zigbee-r22-support-stub-library.a \
../../../protocol\zigbee\build\zll-library-cortexm3-gcc-efr32mg12p-rail\zll-library.a \
 \
 \

CDEFS = -DAPP_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DEFR32MG12P \
-DEFR32MG12P332F1024GL125 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"app/builder/Z3SwitchSoc/Z3SwitchSoc_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"app/builder/Z3SwitchSoc/Z3SwitchSoc_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"app/builder/Z3SwitchSoc/Z3SwitchSoc.h\" \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DEMLIB_USER_CONFIG \
  -DAPPLICATION_TOKEN_HEADER=\"app/builder/Z3SwitchSoc/afv2-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"app/builder/Z3SwitchSoc/afv2-mfg-token.h\" \
  -DPHY_RAIL=1 \
  -DPHY_RAIL=1 \
 \

ASMDEFS = -DAPP_GECKO_INFO_PAGE_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES1_CONFIG2_MICRO \
-DEFR32MG12P \
-DEFR32MG12P332F1024GL125 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"app/builder/Z3SwitchSoc/Z3SwitchSoc_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"app/builder/Z3SwitchSoc/Z3SwitchSoc_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"app/builder/Z3SwitchSoc/Z3SwitchSoc.h\" \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DEMLIB_USER_CONFIG \
  -DAPPLICATION_TOKEN_HEADER=\"app/builder/Z3SwitchSoc/afv2-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"app/builder/Z3SwitchSoc/afv2-mfg-token.h\" \
  -DPHY_RAIL=1 \
  -DPHY_RAIL=1 \
 \

CINC = -I./ \
-I$(ARM_IAR7_DIR)/ARM/INC \
-I../../.. \
-I../../../protocol/zigbee/app/framework \
-I../../../protocol/zigbee/app/framework/../.. \
-I../../../protocol/zigbee/app/framework/../../stack \
-I../../../protocol/zigbee/app/framework/../util \
-I../../../protocol/zigbee/app/framework/include \
-I../../../platform/base/hal \
-I../../../platform/base/hal/plugin \
-I../../../platform/base/hal/.. \
-I../../../platform/base/hal/micro/cortexm3/efm32 \
-I../../../platform/base/hal/micro/cortexm3/efm32/config \
-I../../../platform/base/hal/micro/cortexm3/efm32/efr32 \
-I../../../platform/base/hal/../../CMSIS/Include \
-I../../../platform/base/hal/../../Device/SiliconLabs/efr32mg12p/Include \
-I../../../platform/base/hal/../../emdrv/common/inc \
-I../../../platform/base/hal/../../emdrv/config \
-I../../../platform/base/hal/../../emdrv/dmadrv/inc \
-I../../../platform/base/hal/../../emdrv/gpiointerrupt/inc \
-I../../../platform/base/hal/../../emdrv/rtcdrv/inc \
-I../../../platform/base/hal/../../emdrv/sleep/inc \
-I../../../platform/base/hal/../../emdrv/spidrv/inc \
-I../../../platform/base/hal/../../emdrv/tempdrv/inc \
-I../../../platform/base/hal/../../emdrv/uartdrv/inc \
-I../../../platform/base/hal/../../emdrv/ustimer/inc \
-I../../../platform/base/hal/../../emlib/inc \
-I../../../platform/base/hal/../../middleware/glib \
-I../../../platform/base/hal/../../middleware/glib/glib \
-I../../../platform/base/hal/../../radio/rail_lib/plugin \
-I../../../platform/halconfig/inc/hal-config \
-I../../../hardware/module/config \
-I../../../hardware/kit/common/halconfig \
-I../../../hardware/kit/common/bsp \
  -I../../../platform/bootloader \
  -Ihal-config \
  -I../../../platform/radio/rail_lib/plugin/coexistence/hal/efr32 \
  -I../../../platform/radio/rail_lib/plugin/coexistence/common \
  -I../../../platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154 \
  -I../../../platform/radio/rail_lib/chip/efr32/efr32xg1x \
  -I../../../platform/radio/rail_lib/protocol/zwave \
  -I../../../platform/radio/rail_lib/protocol/ieee802154 \
  -I../../../platform/radio/rail_lib/protocol/ble \
  -I../../../platform/radio/rail_lib/common \
 \

TARGET = Z3SwitchSoc

CSOURCES = $(filter %.c, $(SOURCE_FILES))
ASMSOURCES = $(filter %.s79, $(SOURCE_FILES))
ASMSOURCES2 = $(filter %.s, $(SOURCE_FILES))

COBJS = $(addprefix $(OUTPUT_DIR)/,$(CSOURCES:.c=.o))
ASMOBJS = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES:.s79=.o))
ASMOBJS2 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES2:.s=.o))

OUTPUT_DIRS = $(sort $(dir $(COBJS)) $(dir $(ASMOBJS)) $(dir $(ASMOBJS2)))

ARCHITECTUREID = efr32~family[m]~series[1]~device_configuration[2]~performance[p]~radio[332]~flash[1024k]~temp[g]~package[l]~pins[125]~!module+brd4162a+gcc

# GNU ARM compiler
ifeq ($(findstring +gcc,$(ARCHITECTUREID)), +gcc)
$(info GCC Build)
	# Add linker circular reference as the order of objects may matter for any libraries used
	GROUP_START =-Wl,--start-group
	GROUP_END =-Wl,--end-group

	CCFLAGS = -g3 \
    -gdwarf-2 \
    -mcpu=cortex-m4 \
    -mthumb \
    -std=gnu99 \
    -Os  \
    -Wall  \
    -c  \
    -fmessage-length=0  \
    -ffunction-sections  \
    -fdata-sections  \
    -mfpu=fpv4-sp-d16  \
    -mfloat-abi=softfp \
	$(CDEFS) \
	$(CINC) \

	ASMFLAGS = -c \
	-g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb \
	-c \
	-x assembler-with-cpp \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = -g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb -T "$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/gcc-cfg.ld" \
	-L"$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/" \
	-Xlinker --defsym="SIMEEPROM_SIZE=8192" \
	-Xlinker --defsym="LOCKBITS_IN_MAINFLASH_SIZE=0" \
	-Xlinker --defsym="FLASH_SIZE=1048576" \
	-Xlinker --defsym="RAM_SIZE=262144" \
	-Xlinker --defsym="APP_BTL=1" \
	-Xlinker --defsym="EMBER_MALLOC_HEAP_SIZE=0" \
	-Xlinker --gc-sections \
	-Xlinker -Map="$(PROJECTNAME).map" \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp --specs=nano.specs -u _printf_float \
	-Wl,--start-group -lgcc -lc -lnosys   -Wl,--end-group

	ARCHFLAGS = r

	ELFTOOLFLAGS_BIN = -O binary
	ELFTOOLFLAGS_HEX = -O ihex
	ELFTOOLFLAGS_S37 = -O srec

	ifeq ($(OS),Windows_NT)
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar.exe
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy.exe
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
	else
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
	endif

endif

# IAR 7.xx toolchain
ifeq ($(findstring +iar,$(ARCHITECTUREID)), +iar)
$(info IAR Build)

	# IAR is not sensitive to linker lib order thus no groups needed.
	GROUP_START =
	GROUP_END =
	CINC += -I$(ARM_IAR6_DIR)/ARM/INC

	ifndef ARM_IAR7_DIR
	$(error ARM_IAR7_DIR is not set. Please define ARM_IAR7_DIR pointing to your IAR 7.xx installation folder.)
	endif

	CCFLAGS = --cpu=cortex-m3 \
	--cpu_mode=thumb \
	--diag_suppress=Pa050 \
	-e \
	--endian=little \
	--fpu=none \
	--no_path_in_file_macros \
	--separate_cluster_for_initialized_variables \
	--dlib_config=$(ARM_IAR7_DIR)/ARM/inc/c/DLib_Config_Normal.h \
	--debug \
	--dependencies=m $*.d \
	-Ohz \
	$(CDEFS) \
	$(CINC)

	ASMFLAGS = --cpu cortex-M3 \
	--fpu None \
	-s+ \
	"-M<>" \
	-w+ \
	-t2 \
	-r \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = --entry __iar_program_start \
	--diag_suppress=Lp012 \
	--config $(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/iar-cfg.icf \
	--config_def APP_GECKO_INFO_PAGE_BTL=1 \
	--config_def EMBER_MALLOC_HEAP_SIZE=0

	ARCH = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iarchive.exe
	AS = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iasmarm.exe
	CC = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iccarm.exe
	ELFTOOL = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ielftool.exe
	LD = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ilinkarm.exe

	# No archiver arguments needed for IAR.
	ARCHFLAGS =

	ELFTOOLFLAGS_BIN = --bin
	ELFTOOLFLAGS_HEX = --ihex
	ELFTOOLFLAGS_S37 = --srec --srec-s3only

endif

.PHONY: all clean PROLOGUE

all: PROLOGUE $(OUTPUT_DIRS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES)
	@echo 'Linking...'
	@$(LD) $(GROUP_START) $(LDFLAGS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES) $(GROUP_END) -o $(OUTPUT_DIR)/$(TARGET).out
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_BIN) $(OUTPUT_DIR)/$(TARGET).bin
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_HEX) $(OUTPUT_DIR)/$(TARGET).hex
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_S37) $(OUTPUT_DIR)/$(TARGET).s37
	@echo 'Done.'

PROLOGUE:
#	@echo $(COBJS)
#	@echo $(ASMOBJS)
#	@echo $(ASMOBJS2)

$(OUTPUT_DIRS):
	@mkdir -p $@

$(COBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.c))...'
	@$(CC) $(CCFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.c),$(CSOURCES)) > /dev/null \

$(ASMOBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s79))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s79),$(ASMSOURCES)) > /dev/null

$(ASMOBJS2): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s),$(ASMSOURCES2)) > /dev/null

clean:
	$(RM) -r $(COBJS)
	$(RM) -r $(ASMOBJS)
	$(RM) -r $(ASMOBJS2)
	$(RM) -r $(OUTPUT_DIR)
