#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := NX503A

# Inherit from msm8974-common
$(call inherit-product, device/zte/msm8974-common/msm8974.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/NX503A/overlay

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
     $(LOCAL_PATH)/ramdisk/init.poweroffcharge.rc:root/lpm.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
     $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
     $(LOCAL_PATH)/ramdisk/init.nubia.usb.rc:root/init.nubia.usb.rc \
     $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
     $(LOCAL_PATH)/ramdisk/init.nubia.sh:root/init.nubia.sh \
     $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
#     $(LOCAL_PATH)/ramdisk/sbin/security_boot_check:root/sbin/security_boot_check \

# Recovery
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/recovery/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
     $(LOCAL_PATH)//recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# USB driver
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/driver.iso:system/driver.iso
	
	
# Charger images
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/charger/images/battery_0.png:root/res/images/charger/battery_0.png \
     $(LOCAL_PATH)/charger/images/battery_1.png:root/res/images/charger/battery_1.png \
     $(LOCAL_PATH)/charger/images/battery_2.png:root/res/images/charger/battery_2.png \
     $(LOCAL_PATH)/charger/images/battery_3.png:root/res/images/charger/battery_3.png \
     $(LOCAL_PATH)/charger/images/battery_4.png:root/res/images/charger/battery_4.png \
     $(LOCAL_PATH)/charger/images/battery_5.png:root/res/images/charger/battery_5.png \
     $(LOCAL_PATH)/charger/images/battery_charge.png:root/res/images/charger/battery_charge.png \
     $(LOCAL_PATH)/charger/images/battery_fail.png:root/res/images/charger/battery_fail.png
     
# keylayout
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
     $(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     $(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
     $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
     $(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
     $(LOCAL_PATH)/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
     $(LOCAL_PATH)/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
     $(LOCAL_PATH)/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
     $(LOCAL_PATH)/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
     $(LOCAL_PATH)/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
     $(LOCAL_PATH)/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
     $(LOCAL_PATH)/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
     $(LOCAL_PATH)/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl


# keychars
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
     $(LOCAL_PATH)/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
     $(LOCAL_PATH)/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
     $(LOCAL_PATH)/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# idc
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
     $(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
     $(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
     $(LOCAL_PATH)/idc/zte_cap_touchscreen.idc:system/usr/idc/zte_cap_touchscreen.idc
     
# snd_soc_msm
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_Taiko:system/etc/snd_soc_msm/snd_soc_msm_Taiko
     
# Bluetooth
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bluetooth/bcm4339.hcd:system/vendor/firmware/bcm4339.hcd \
     
# Thermald
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/thermald/thermald-8974.conf:system/etc/thermald-8974.conf \
	$(LOCAL_PATH)/thermald/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    
PRODUCT_PACKAGES += \
    Torch

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
