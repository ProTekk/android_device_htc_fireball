# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fireball

# Kernel
TARGET_KERNEL_CONFIG := fighter_defconfig

# RIL
BOARD_PROVIDES_LIBRIL := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/fireball/bluetooth

# HTCLOG
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Vold
# BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 36
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

#cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p23: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffe00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p33: 47fffc00 00000200 "system"
#mmcblk0p30: 00140200 00000200 "local"
#mmcblk0p34: 13fffe00 00000200 "cache"
#mmcblk0p35: 49fffe00 00000200 "userdata"
#mmcblk0p26: 01400000 00000200 "devlog"
#mmcblk0p28: 00040000 00000200 "pdata"
#mmcblk0p36: 109c00000 00000200 "fat"
#mmcblk0p31: 00010000 00000200 "extra"
#mmcblk0p17: 02d00000 00000200 "radio"
#mmcblk0p18: 00a00000 00000200 "adsp"
#mmcblk0p16: 00100000 00000200 "dsps"
#mmcblk0p19: 00500000 00000200 "wcnss"
#mmcblk0p20: 007ffa00 00000200 "radio_config"
#mmcblk0p24: 00400000 00000200 "modem_st1"
#mmcblk0p25: 00400000 00000200 "modem_st2"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1207958528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1241513472
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/fireball/recovery/kernel

# TWRP
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_DUMLOCK := true
