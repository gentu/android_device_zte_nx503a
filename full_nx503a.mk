# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/zte/nx503a
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/zte/nx503a/nx503a.mk)
PRODUCT_DEVICE := NX503A
PRODUCT_NAME := full_NX503A
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Z5S
PRODUCT_MANUFACTURER := zte
PRODUCT_RESTRICT_VENDOR_FILES := false


