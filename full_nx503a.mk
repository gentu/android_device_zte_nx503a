# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_nx503a
PRODUCT_DEVICE := nx503a
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on Z5S
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Include all supported languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION := RU

$(call inherit-product, device/zte/nx503a/device.mk)
$(call inherit-product, vendor/zte/nx503a/nx503a-vendor.mk)
