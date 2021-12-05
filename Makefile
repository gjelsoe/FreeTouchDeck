# Uncomment lines for Linux or Windows if you have problems with $PATH
# Linux 
#SHELL := /bin/bash
#PATH := /usr/local/bin:$(PATH)

# Windows
# If platformIO path has been set, you can do it here else the Makefile won't work.
PlatformIO_Path = C:\Users\%USERNAME%\.platformio\penv\Scripts
export path := $(PlatformIO_Path);$(Path)

.DEFAULT_GOAL := info

all:
	platformio -f  run

upload:
	platformio -f  run --target upload

touchdown:
	platformio -f  run --target esp32-touchdown

makerfabs:
	platformio -f  run --target Makerfabs_Capacitive_Touch

devkit:
	platformio -f  run --target esp32doit-devkit-v1

clean:
	platformio -f  run --target clean

program:
	platformio -f  run --target program

uploadfs:
	platformio -f  run --target uploadfs

update:
	platformio -f  update

info:
	@echo Make sure that a PATH for PlatformIO has been set for Linux or Windows
	@echo within the Makefile by changing PlatformIO_Path with the correct path.
	@echo .
	@echo The following commands are:
	@echo .
	@echo all 		- Builds BIN files for all devices.
	@echo clean 		- Removes all files generated while building.
	@echo touchdown 	- Builds BIN file for touchdown
	@echo makerfabs 	- Builds BIN file for Makefabs
	@echo devkit 		- Builds BIN file for ESP32 Dev-Kit
	@echo .
	@echo BIN files can be found at 'built_out\firmware' directory.
	@echo .
