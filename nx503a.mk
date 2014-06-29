# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml\
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# IR
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# GSM and CDMA
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access_debug.xml
endif

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Capability
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/capability.xml:system/etc/capability.xml

# CnE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cne/NsrmConfiguration.xml:system/etc/cne/NsrmConfiguration.xml \
    $(LOCAL_PATH)/configs/cne/SwimConfig.xml:system/etc/cne/SwimConfig.xml \
    $(LOCAL_PATH)/configs/cne/andsfCne.xml:system/etc/cne/andsfCne.xml

# Custom init / uevent
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/fstab.qcom:root/fstab.qcom \
     $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
     $(LOCAL_PATH)/configs/init.qcom.usb.rc:root/init.qcom.usb.rc \
     $(LOCAL_PATH)/configs/ueventd.qcom.rc:root/ueventd.qcom.rc

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
     $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
     $(LOCAL_PATH)/configs/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
     $(LOCAL_PATH)/configs/cyttsp4_mt.idc:system/usr/idc/input_proxy.idc

# ACDB configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_Headset_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Headset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_Handset_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Handset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_Hdmi_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Hdmi_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_Global_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Global_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_Bluetooth_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_Speaker_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Speaker_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Liquid/Liquid_General_cal.acdb:system/etc/acdbdata/Liquid/Liquid_General_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_Global_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Global_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_Bluetooth_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_Headset_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Headset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_General_cal.acdb:system/etc/acdbdata/Fluid/Fluid_General_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_Handset_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Handset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_Hdmi_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Hdmi_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/Fluid/Fluid_Speaker_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Speaker_cal.acdb \

# Audio Policy Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths_auxpcm.xml


# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bcm4339.hcd:system/vendor/firmware/bcm4339.hcd \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Thermal-engine
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8974pro.conf:system/etc/thermal-engine-8974pro.conf

# GPS configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# WFD
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wfd/wfdconfig.xml:system/etc/wfdconfig.xml \
    $(LOCAL_PATH)/configs/wfd/wfdconfig960_540.xml:system/etc/wfdconfig960_540.xml \
    $(LOCAL_PATH)/configs/wfd/wfdconfigsink.xml:system/etc/wfdconfigsink.xml \
    $(LOCAL_PATH)/configs/wfd/wfdconfig1280_720.xml:system/etc/wfdconfig1280_720.xml \
    $(LOCAL_PATH)/configs/wfd/wfdconfig640_480.xml:system/etc/wfdconfig640_480.xml \
    $(LOCAL_PATH)/configs/wfd/wfdconfig800_480.xml:system/etc/wfdconfig800_480.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# Dolby
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ds1-default.xml:system/etc/ds1-default.xml

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/ftm_test_config:system/etc/ftm_test_config \
    $(LOCAL_PATH)/configs/mobilenuminmainland.db:system/etc/mobilenuminmainland.db \
    $(LOCAL_PATH)/configs/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    audiod \
    tinycap \
    tinymix \
    tinyplay \
    tinypcminfo

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    liboverlay \
    libmemalloc \
    libqdutils \
    hwcomposer.msm8974 \
    gralloc.msm8974 \
    copybit.msm8974 \
    memtrack.msm8974

# IR packages
PRODUCT_PACKAGES += \
    consumerir.msm8974

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libOmxVdecHevc \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw \
    libtilerenderer \
    libI420colorconvert

# Power
PRODUCT_PACKAGES += \
    power.msm8974

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974 \
    libgps.utils \
    libloc_adapter \
    libloc_eng

# NFC packages
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras \
    nfc.default

# USB packages
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Qualcomm Random Numbers Generator
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

PRODUCT_PACKAGES += \
    libemoji \
    libion

# libxml2 is needed for camera
PRODUCT_PACKAGES += \
    libxml2

# Network
PRODUCT_PACKAGES += \
    libnetcmdiface \
    libnl_2

# Wifi direct
PRODUCT_PACKAGES += \
    crda \
    regdbdump \
    regulatory.bin \
    linville.key.pub.pem

# Hostapd
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Extended media support
PRODUCT_PACKAGES += \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# for off charging mode
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sys.umsdirtyratio=20

# Set default USB interface
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage,adb

# Opengles 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Drm service
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Lcd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=ZTEQualcommUiccRIL \
    ro.telephony.ril.v3=qcomdsds

# VIDC debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.chipname=msm8974

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.handset.mic.type=digital \
    persist.audio.fluence.voicecall=true \
    persist.audio.dualmic.config=endfire \
    persist.audio.fluence.voicerec=true \
    persist.audio.fluence.speaker=false

PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=4 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    av.offload.enable=true

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# Prefer SPN over PLMN name in nw scan response.
# This avoids different names to be displayed to the user for same PLMN.
# RIL uses this property.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.prefer_spn=2

# update 1x signal strength after 2s
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.snapshot_enabled=1 \
    persist.radio.snapshot_timer=2

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.use_cc_names=true

#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.dtm=0 \
    ro.ril.transmitpower=true \
    ril.data.bootingpopup=0 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.adb_log_on=1 \
    persist.radio.add_power_save=1 \
    persist.radio.snapshot_disabled=1 \
    persist.radio.use_se_table_only=1 \
    persist.radio.fill_eons=1 \
    persist.radio.kickstart=on \
    persist.radio.tdscdma_present=2 \
    persist.sys.strictmode.disable=true \
    persist.telephony.oosisdc=false \
    ro.config.vc_call_vol_steps=4 \
    debug.sensors=1

# Recovery Options
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/persist,/firmware,/boot,/sbl1,/tz,/rpm,/sdi,/aboot,/splash,/custom \
    ro.cwm.forbid_mount=/persist,/firmware

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

DEVICE_PACKAGE_OVERLAYS += device/zte/nx503a/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.m
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.m

# Wifi bcm4339
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

# Inherit from vendor files
$(call inherit-product, vendor/zte/nx503a/nx503a-vendor.mk)

