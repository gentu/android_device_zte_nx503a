# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/nx503a/full_nx503a.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx503a
PRODUCT_NAME := cm_nx503a
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Z5S
PRODUCT_MANUFACTURER := ZTE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=NX503A BUILD_FINGERPRINT=nubia/NX503A/NX503A:4.4.2/KVT49L/eng.nubia.20150120.194044:user/release-keys PRIVATE_BUILD_DESC="NX503A-user 4.4.2 KVT49L eng.nubia.20150120.194044 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
