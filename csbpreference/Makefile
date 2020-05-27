include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = csbpreference

csbpreference_FILES = CSBRootListController.m
csbpreference_INSTALL_PATH = /Library/PreferenceBundles
csbpreference_FRAMEWORKS = UIKit
csbpreference_PRIVATE_FRAMEWORKS = Preferences
csbpreference_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/csbpreference.plist$(ECHO_END)
