# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
    device/huawei/nemo/kernel:kernel


PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.configfs=1 \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=manufacture,adb \
    sys.usb.controller=hisi-usb-otg

# adb as root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += security.perf_harden=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1



# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nemo
PRODUCT_NAME := omni_nemo
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
PRODUCT_MODEL := Honor5C
