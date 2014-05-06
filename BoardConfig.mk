# inherit from the proprietary version
-include vendor/zte/nx503a/BoardConfigVendor.mk

-include device/zte/msm8974-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_NAME := nubia
TARGET_BOARD_INFO_FILE := device/zte/nx503a/board-info.txt

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Kernel information
#TARGET_KERNEL_SOURCE := kernel/zte/nx503a
#TARGET_KERNEL_CONFIG := cm_nx503a_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/zte/nx503a/kernel

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x2000000 --tags_offset 0x01E00000 

BOARD_KERNEL_SEPARATED_DT := true
TARGET_ZTEMT_DTS := false

# Custom boot
BOARD_CUSTOM_BOOTIMG_MK := device/zte/nx503a/mkbootimg.mk

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1288488960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354560
BOARD_FLASH_BLOCK_SIZE := 131072

# RIL
BOARD_RIL_CLASS := ../../../device/zte/nx503a/ril/

# Init
TARGET_NO_INITLOGO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/nx503a/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/zte/nx503a/bluetooth/libbt_vndcfg.txt

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/zte/nx503a/init/init_nx503a.c

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 23
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

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
TARGET_RECOVERY_FSTAB := device/zte/nx503a/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

