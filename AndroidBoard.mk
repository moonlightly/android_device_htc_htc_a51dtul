LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
BOARD_VENDOR := htc
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/htc/htc_a51dtul/AndroidBoardVendor.mk
