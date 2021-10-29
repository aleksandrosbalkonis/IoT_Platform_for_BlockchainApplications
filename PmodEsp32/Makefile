CHIP = esp32
BOARD = esp32

LWIP_VARIANT ?= lm2f
# VERBOSE=1

THIS_DIR := $(realpath $(dir $(realpath $(lastword $(MAKEFILE_LIST)))))
THIS_LIBS := $(THIS_DIR)/libs
ESP_ROOT ?= /home/alekos/Arduino/hardware/espressif/esp32
ARDUINO_LIBS = /home/alekos/Arduino/libraries

SKETCH = $(THIS_DIR)/pmod_esp32.ino
LIBS =  $(ESP_LIBS)/WiFi/ \\
	$(ESP_LIBS)/HardwareSerial/ \
	$(ESP_LIBS)/SPIFFS/ \
	$(THIS_LIBS)/pmod_esp32/ \
	$(THIS_LIBS)/ecdsa/ 
	

UPLOAD_SPEED = 115200

BUILD_EXTRA_FLAGS = -D USE_ECMULT_STATIC_PRECOMPUTATION


include $(THIS_DIR)/libs/makeEspArduino/makeEspArduino.mk
