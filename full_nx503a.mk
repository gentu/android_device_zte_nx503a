# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/zte/nx503a/nx503a.mk)

PRODUCT_DEVICE := NX503A
PRODUCT_NAME := full_NX503A
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Z5S
PRODUCT_MANUFACTURER := zte
