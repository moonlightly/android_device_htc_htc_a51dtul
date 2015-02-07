$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/htc_a51dtul/htc_a51dtul-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/htc_a51dtul/overlay

LOCAL_PATH := device/htc/htc_a51dtul

#kernel header
ifneq ($(OUT),)
ifeq ($(MK_KERNEL_OBJ),)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr/include 2>/dev/null)
#$(shell rm -rf $(OUT)/obj/KERNEL_OBJ;\
#    mkdir -p $(OUT)/obj;\
#    ln -s $(ANDROID_BUILD_TOP)/$(LOCAL_PATH)/include/KERNEL_OBJ $(OUT)/obj/KERNEL_OBJ)
MK_KERNEL_OBJ := true
endif
endif

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    #CN Zoneinfo
    $(TARGET_OUT)/usr/share/zoneinfo:recovery/root/system/usr/share/zoneinfo/tzdata

$(call inherit-product, build/target/product/full.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    persist.fuse_sdcard=true \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.bootloader.mode=download \
    persist.sys.usb.config=mass_storage \
    ro.mount.fs=EXT4

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    persist.timed.enable=true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/ueventd.goldfish.rc

PRODUCT_NAME := full_htc_a51dtul
PRODUCT_DEVICE := htc_a51dtul
