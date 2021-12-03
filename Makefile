# Uncomment lines for Linux or Windows if you have problems with $PATH
# Linux 
#SHELL := /bin/bash
#PATH := /usr/local/bin:$(PATH)

# Windows
# If platformIO path has been set, you can do it here else the Makefile won't work.
PlatformIO_Path = C:\Users\%USERNAME%\.platformio\penv\Scripts
export path := $(PlatformIO_Path);$(Path)

all:
	platformio -f  run

upload:
	platformio -f  run --target upload

clean:
	platformio -f  run --target clean

program:
	platformio -f  run --target program

uploadfs:
	platformio -f  run --target uploadfs

update:
	platformio -f  update
