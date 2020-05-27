INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 192.168.0.18
ARCHS = armv7 armv7s arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ClearSpringBoard

ClearSpringBoard_FILES = Tweak.x
ClearSpringBoard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += csbpreference
include $(THEOS_MAKE_PATH)/aggregate.mk
