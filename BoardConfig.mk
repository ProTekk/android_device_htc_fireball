USE_CAMERA_STUB := true

# inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fireball

# Kernel
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8
BOARD_FORCE_RAMDISK_ADDRESS := 0x81800000

TARGET_PREBUILT_KERNEL := device/htc/fireball/kernel

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Filesystem (cat /proc/emmc)
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00fffe00
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x47fffc00
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x49fffe00
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery: set depending on recovery being built for. (CWM or TWRP)
#           both init scripts can be found in the recovery folder
#TARGET_RECOVERY_INITRC := device/htc/fireball/recovery/init-cwm.rc
TARGET_RECOVERY_INITRC := device/htc/fireball/recovery/init-twrp.rc

# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

#TWRP
DEVICE_RESOLUTION := 540x960
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true

