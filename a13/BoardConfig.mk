USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/allwinner/a10/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := exDroid
TARGET_BOOTLOADER_BOARD_NAME := crane
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := a10

BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := vendor/allwinner/a10/recovery_keys.c
# TARGET_RECOVERY_INITRC := vendor/allwinner/a10/recovery_init.rc

#twrp recovery
#BOARD_HAS_SDCARD_INTERNAL := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#DEVICE_RESOLUTION := 1024x768
#TW_FLASH_FROM_STORAGE := true
#TW_NO_REBOOT_BOOTLOADER := true
#TWRP_EVENT_LOGGING := true
#TW_INTERNAL_STORAGE_PATH := "/emmc"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file

TARGET_PREBUILT_KERNEL := device/allwinner/a10/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true