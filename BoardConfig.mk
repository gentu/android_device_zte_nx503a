#
# Copyright (C) 2013 The CyanogenMod Project
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

# Copyright (C) 2014 The Android Open Source Project
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



-include device/zte/msm8974-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/zte/NX503A/BoardConfigVendor.mk

TARGET_BOOTLOADER_NAME		 := NX503A
TARGET_BOOTLOADER_BOARD_NAME := MSM8974

TARGET_BOARD_INFO_FILE := device/zte/NX503A/board-info.txt

BOARD_KERNEL_CMDLINE 	:= console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 
#androidboot.selinux=permissive

BOARD_KERNEL_BASE 		:= 0x00000000
BOARD_KERNEL_PAGESIZE 	:= 2048
BOARD_MKBOOTIMG_ARGS 	:= --ramdisk_offset 0x2000000 --tags_offset 0x01E00000 


BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 10485760		#10M  boot
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 10485760		#10M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1288488960	#1.2G system
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 2684354560	#2.5G data
BOARD_FLASH_BLOCK_SIZE 				:= 131072

#TARGET_PREBUILT_KERNEL := device/zte/NX503A/kernel

TARGET_KERNEL_SOURCE := kernel/zte/NX503A
TARGET_KERNEL_CONFIG := cm_NX503A_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_ZTEMT_DTS := true

BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := device/zte/NX503A/mkbootimg.mk

TARGET_KERNEL_CUSTOM_TOOLCHAIN:= linaro-4.8

#RIL
BOARD_RIL_CLASS := ../../../device/zte/NX503A/ril/

# Init
TARGET_NO_INITLOGO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/NX503A/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/zte/NX503A/bluetooth/libbt_vndcfg.txt

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/zte/NX503A/init/init_NX503A.c

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 23
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

#SKIP_SET_METADATA :=true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Revcovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_ALWAYS_WIPES := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := true



BOARD_RECOVERY_SWIPE 				:= true
RECOVERY_FSTAB_VERSION 				:= 2
TARGET_RECOVERY_FSTAB 				:= device/zte/NX503A/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT 		:= "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"roboto_23x41.h\"


#TWRP config
DEVICE_RESOLUTION 					:= 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_INCLUDE_JB_CRYPTO 				:= true
TW_FLASH_FROM_STORAGE 				:= true
BOARD_HAS_NO_REAL_SDCARD 			:= false
RECOVERY_SDCARD_ON_DATA 			:= false

TW_INTERNAL_STORAGE_PATH 			:= "/storage/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT 	:= "/sdcard"


TW_BRIGHTNESS_PATH 					:= "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS 					:= 100

TW_NO_SCREEN_TIMEOUT 				:= true
#TWRP end



