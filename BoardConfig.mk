#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := device/huawei/nemo

# Assert
TARGET_OTA_ASSERT_DEVICE := Honor5C,Honor5c,NEM,hi6250,nemo,NEMO

# Platform

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi6250
TARGET_BOOTLOADER_BOARD_NAME := hi6250
TARGET_BOARD_PLATFORM := hi6250
TARGET_SOC := kirin650

TARGET_BOOTLOADER_BOARD_NAME := hi6250

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# Kernel
BOARD_KERNEL_BASE := 0x00478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := loglevel=4 coherent_pool=512K page_tracker=on slub_min_objects=12 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x07588000
TARGET_PREBUILT_KERNEL := device/huawei/nemo/kernel

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Partitions
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2080374784
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26935820288
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true


TARGET_PROVIDES_KEYMASTER := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true

# TWRP
#RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/huawei/nemo/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TWHAVE_SELINUX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
BOARD_HAS_NO_SELECT_BUTTON := true

TW_EXCLUDE_SUPERSU := true

