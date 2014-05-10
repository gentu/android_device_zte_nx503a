# Ramdisk
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
     $(LOCAL_PATH)/ramdisk/init.poweroffcharge.rc:root/lpm.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
     $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
     $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# keylayout
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
     $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# idc
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
     $(LOCAL_PATH)/idc/zte_cap_touchscreen.idc:system/usr/idc/zte_cap_touchscreen.idc
     
# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bcm4339.hcd:system/vendor/firmware/bcm4339.hcd \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
     
# Thermald
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermald/thermal-engine.conf:system/etc/thermal-engine-8974.conf \
    $(LOCAL_PATH)/thermald/thermal-engine.conf:system/etc/thermal-engine.conf

# Recovery Options
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/persist,/firmware,/boot,/sbl1,/tz,/rpm,/sdi,/aboot,/splash,/custom \
    ro.cwm.forbid_mount=/persist,/firmware

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

DEVICE_PACKAGE_OVERLAYS += device/zte/nx503a/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Inherit from msm8974-common
$(call inherit-product, device/zte/msm8974-common/msm8974.mk)

# Inherit from vendor files
$(call inherit-product, vendor/zte/nx503a/nx503a-vendor.mk)

