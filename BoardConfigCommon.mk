FORCE_32_BIT := true

LOCAL_PATH := device/samsung/gtel-common

# Inherit from common
-include device/samsung/qcom-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

TARGET_WANTS_SILENT_PAGE_RECORDS := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm8916
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM_GPU       := qcom-adreno306

# Architecture
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_LEGACY_AUDIO_POLICY := 0
USE_CUSTOM_AUDIO_POLICY := 1
TARGET_QCOM_AUDIO_VARIANT := caf

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Protobuf
PROTOBUF_SUPPORTED := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Camera
TARGET_USE_VENDOR_CAMERA_EXT := true
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND    := true
BOARD_CHARGER_SHOW_PERCENTAGE   := true

# Cpusets
ENABLE_CPUSETS := true

# Enable QCOM FM feature
AUDIO_FEATURE_ENABLED_FM := true
BOARD_HAVE_QCOM_FM := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS :=	$(LOCAL_PATH)/cmhw
BOARD_HARDWARE_CLASS +=	\
	hardware/cyanogen/cmhw \
	hardware/samsung/cmhw

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
	camera2.portability.force_api=1

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_HAVE_NEW_GRALLOC := true

# Encryption
TARGET_SWV8_DISK_ENCRYPTION := true

# FM
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8916
#TARGET_NO_RPC := true

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

#ART
# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_UNIFIED_DEVICE := true
TARGET_PROVIDES_INIT_RC := false

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SELINUX_LOG_CONFIG := selinux_log_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gtelwifiue

# Keymaster
TARGET_HW_KEYMASTER_V03 := true

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# malloc implementation
MALLOC_IMPL := dlmalloc

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE      := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 15728640
BOARD_CACHEIMAGE_PARTITION_SIZE     := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072

# Misc
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true

# Power
#TARGET_POWERHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := qcom
CM_POWERHAL_EXTENSION := qcom
WITH_QC_PERF := true

# Media
TARGET_QCOM_MEDIA_VARIANT           := caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Qualcomm support
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE   := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY := true
TARGET_USES_NEW_ION_API := true

#Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# RIL
TARGET_RIL_VARIANT := caf
#override to enable audio.
BOARD_PROVIDES_LIBRIL := false

# SELinux
include device/qcom/sepolicy/sepolicy.mk
-include vendor/cm/sepolicy/sepolicy.mk
-include vendor/cm/sepolicy/qcom/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/samsung/gtel-common/sepolicy

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/gtel-common/recovery/fstab.qcom
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/gtel-common/recovery/recovery_keys.c
BOARD_HAS_LARGE_FILESYSTEM			:= true
TARGET_RECOVERY_DENSITY 			:= hdpi
BOARD_HAS_NO_MISC_PARTITION 		:= true
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_RECOVERY_SWIPE 				:= true
BOARD_USE_CUSTOM_RECOVERY_FONT 	    := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS 				:= true
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_SDCARD_ON_DATA := true

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 67
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
WLAN_CHIPSET := pronto
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH  := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

#make, move, symlink and strip the wlan kernel module.
KERNEL_EXTERNAL_MODULES:
	+$(MAKE) -C device/samsung/gtel-common/wlan/prima/ WLAN_ROOT=$(ANDROID_BUILD_TOP)/device/samsung/gtel-common/wlan/prima/ \
		KERNEL_SOURCE=$(KERNEL_OUT) ARCH="arm" \
		CROSS_COMPILE="arm-eabi-"
	mkdir $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/ -p
	ln -sf /system/lib/modules/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko
	mv device/samsung/gtel-common/wlan/prima/wlan.ko $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko
	arm-eabi-strip --strip-debug $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko
	+$(MAKE) -C device/samsung/gtel-common/wlan/prima/ clean
TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES