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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/zte/nx503a/nx503a-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/nx503a/overlay
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := NX503A

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

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
     $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# Recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh

	
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
    
PRODUCT_PACKAGES += \
    Torch

# Recovery Options
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/persist,/firmware,/boot,/sbl1,/tz,/rpm,/sdi,/aboot,/splash,/custom \
    ro.cwm.forbid_mount=/persist,/firmware

# Inherit from msm8974-common
$(call inherit-product, device/zte/msm8974-common/msm8974.mk)

