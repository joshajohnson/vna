################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/ad8319.c \
../Src/adc.c \
../Src/dwt_stm32_delay.c \
../Src/gainBlock.c \
../Src/gpio.c \
../Src/i2c.c \
../Src/i2s.c \
../Src/main.c \
../Src/max2871.c \
../Src/max2871_registers.c \
../Src/pe43771.c \
../Src/spi.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/system_stm32f4xx.c \
../Src/usb_device.c \
../Src/usbd_cdc_if.c \
../Src/usbd_conf.c \
../Src/usbd_desc.c 

OBJS += \
./Src/ad8319.o \
./Src/adc.o \
./Src/dwt_stm32_delay.o \
./Src/gainBlock.o \
./Src/gpio.o \
./Src/i2c.o \
./Src/i2s.o \
./Src/main.o \
./Src/max2871.o \
./Src/max2871_registers.o \
./Src/pe43771.o \
./Src/spi.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/system_stm32f4xx.o \
./Src/usb_device.o \
./Src/usbd_cdc_if.o \
./Src/usbd_conf.o \
./Src/usbd_desc.o 

C_DEPS += \
./Src/ad8319.d \
./Src/adc.d \
./Src/dwt_stm32_delay.d \
./Src/gainBlock.d \
./Src/gpio.d \
./Src/i2c.d \
./Src/i2s.d \
./Src/main.d \
./Src/max2871.d \
./Src/max2871_registers.d \
./Src/pe43771.d \
./Src/spi.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/system_stm32f4xx.d \
./Src/usb_device.d \
./Src/usbd_cdc_if.d \
./Src/usbd_conf.d \
./Src/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F407xx -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Inc" -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Josh Johnson/Dropbox/ENGN4200/vna/Firmware/DevBoards/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


