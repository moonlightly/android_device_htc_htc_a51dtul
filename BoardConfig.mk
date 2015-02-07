USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/htc_a51dtul/BoardConfigVendor.mk

# Bootloader
BOARD_VENDOR := htc
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8939
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Platform
TARGET_ARCH := arm
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := htc_a51dtul
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

#Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/htc/htc_a51dtul/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000 --dt device/htc/htc_a51dtul/dt.img
KERNEL_EXFAT_MODULE_NAME := "exfat"

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

#Recovery
#Screen
TARGET_RECOVERY_SCREEN_WIDTH := 720x1280
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

#Pexil Format RGBX
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

#Pixel if or? And configure KERNEL_OBJ
TARGET_USES_QCOM_BSP := false
#BOARD_CUSTOM_GRAPHICS := ../../../device/htc/htc_a51dtul/recovery/graphics_cn.c

#Keys
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/htc/htc_a51dtul/recovery/recovery_keys.c

# Assert
TARGET_OTA_ASSERT_DEVICE := htc_a51dtul
TARGET_QCOM_DISPLAY_VARIANT := caf-new

#Font
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fonten44_26x71.h\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn30_18x48.h\"

#mmcutils
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

#Fstab
TARGET_RECOVERY_FSTAB := device/htc/htc_a51dtul/rootdir/etc/recovery.fstab

#/data/media/0 Storage
RECOVERY_USE_MIGRATED_STORAGE := true
#RECOVERY_NEED_SELINUX_FIX := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

#Virtual Key
RECOVERY_USE_VIRTUAL_KEY := true

#Swipe
#BOARD_RECOVERY_SWIPE := true

#Fix Wipe
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

#TWRP flags
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true







