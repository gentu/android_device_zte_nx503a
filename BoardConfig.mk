# inherit from the proprietary version
-include vendor/zte/nx503a/BoardConfigVendor.mk

#-include device/zte/msm8974-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/zte/nx503a/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_BOOTLOADER_NAME := nubia
TARGET_BOARD_INFO_FILE := device/zte/nx503a/board-info.txt

# ZTE Platform
BOARD_VENDOR := zte

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_ARMV7A := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION:= true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Kernel information
TARGET_KERNEL_SOURCE := kernel/zte/nx503a
TARGET_KERNEL_CONFIG := cm_nx503a_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x2000000 --tags_offset 0x01E00000 

BOARD_KERNEL_SEPARATED_DT := true
TARGET_ZTEMT_DTS := true

# Custom boot
BOARD_CUSTOM_BOOTIMG_MK := device/zte/nx503a/mkbootimg.mk
BOARD_CUSTOM_PREBUILT_KERNEL := true

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1288488960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354560
BOARD_FLASH_BLOCK_SIZE := 131072

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_USES_QCOM_BSP := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf-new
TARGET_QCOM_MEDIA_VARIANT := caf-new
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Graphics
BOARD_EGL_CFG := device/zte/nx503a/configs/egl.cfg
USE_OPENGL_RENDERER := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_C2D_COMPOSITION := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
HAVE_ADRENO_SOURCE := false
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_PROVIDES_CAMERA_HAL := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DDISABLE_HW_ID_MATCH_CHECK

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

# PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.msm8974

# WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# NFC
BOARD_HAVE_NFC := true

# RIL
BOARD_RIL_CLASS := ../../../device/zte/nx503a/telephony-common/

# Init
TARGET_NO_INITLOGO := true

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/zte/nx503a/init/init_nubia.c

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/nx503a/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/zte/nx503a/bluetooth/libbt_vndcfg.txt

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 23
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_AP_ARG := "firmware_path=/system/vendor/firmware/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"

# Revcovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_ALWAYS_WIPES := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/zte/nx503a/configs/fstab.qcom
TARGET_RECOVERY_INITRC := device/zte/nx503a/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# ota
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=NX503A BUILD_FINGERPRINT=nubia/NX503A/NX503A:4.2.2/JDQ39/eng.nubia.20140210.165901:user/release-keys PRIVATE_BUILD_DESC="NX503A-user 4.2.2 JDQ39 eng.nubia.20140210.165901 release-keys"


# OTA
#TARGET_UNIFIED_DEVICE := true //Fix package ota zip error ,for cm10 tools
TARGET_OTA_ASSERT_DEVICE := NX503A,nx503a,Z5S,z5s,NX503AJ,nx503aj,Z5SN,z5sn
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/zte/nx503a/releasetools/zte_ota_from_target_files
TARGET_RELEASETOOLS_EXTENSIONS := device/zte/nx503a/releasetools

BOARD_SEPOLICY_DIRS += \
        device/zte/nx503a/sepolicy

BOARD_SEPOLICY_UNION += \
        file_contexts \
        app.te \
        device.te

