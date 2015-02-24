################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/button_io.c \
../src/platform.c \
../src/tetris.c \
../src/vga.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/button_io.o \
./src/platform.o \
./src/tetris.o \
./src/vga.o 

C_DEPS += \
./src/button_io.d \
./src/platform.d \
./src/tetris.d \
./src/vga.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../tetris_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mno-xl-soft-div -mcpu=v9.3 -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


