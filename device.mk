#
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, vendor/huawei/hi6250/hi6250-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-common/main \
    $(LOCAL_PATH)/overlay-lineage

# Audio
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Camera
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/camera/cam.hi3650.sh:system/bin/cam.hi3650.sh

# Codec
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media-codec-blacklist:system/etc/media-codec-blacklist

# APNs
PRODUCT_COPY_FILES += \
     device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BKL-L09-user 8.0.0 HUAWEIBKL-L09 130(C432) release-keys" \
    BUILD_FINGERPRINT="HONOR/BKL-L09/HWBKL:8.0.0/HUAWEIBKL-L09/130(C432):user/release-keys"

# HW Framework
PRODUCT_PACKAGES += \
	com.huawei.audioalgo \
	hwpostcamera \
	hwEmui

# Sdcardfs
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sys.sdcardfs=0 \
    persist.sys.sdcardfs.emulated=0 \
    persist.sys.sdcardfs.public=0

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Huawei HiSuite (also other OEM custom programs I guess) it's of no use in AOSP builds
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	persist.sys.usb.config=adb

# GMS Client ID
PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Device init scripts
PRODUCT_PACKAGES += \
    init.bcm43xx.rc \
    init.hisi.rc \
    init.hi6250.rc \
    init.hi6250.ab.rc \
    init.hi6250.environ.rc

# Display
PRODUCT_PACKAGES += \
    libion

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# NFC
PRODUCT_PACKAGES += \
    Tag \
    com.android.nfc_extras \
    nfc_nci.pn54x.default \
    NfcNci \
    libnfc-nci

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.version.all_codenames=$(PLATFORM_VERSION_ALL_CODENAMES) \
    ro.build.version.codename=$(PLATFORM_VERSION_CODENAME) \
    ro.build.version.huawei=8.0.0 \
    ro.build.version.huawei1=8.1.0 \
    ro.build.version.release=$(PLATFORM_VERSION) \
    ro.build.version.sdk=$(PLATFORM_SDK_VERSION) \
    ro.cust.cdrom=/dev/null

# Recovery
PRODUCT_PACKAGES += \
    resize2fs_static

# Release tools
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/releasetools.hi6250.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/releasetools.hi6250.sh

#Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Selinux
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sepolicy/27.0.cil:$(TARGET_COPY_OUT_SYSTEM)/etc/selinux/mapping/27.0.cil

# Shims
PRODUCT_PACKAGES += \
    libshims_hisupl \
    libshims_hwsmartdisplay_jni

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.hi6250

# VNDK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vndk-compat/ld.config.26.txt:system/etc/ld.config.26.txt \
    $(LOCAL_PATH)/vndk-compat/llndk.libraries.26.txt:system/etc/llndk.libraries.26.txt \
    $(LOCAL_PATH)/vndk-compat/vndksp.libraries.26.txt:system/etc/vndksp.libraries.26.txt \
    $(LOCAL_PATH)/vndk-compat/ld.config.27.txt:system/etc/ld.config.27.txt

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi.hostapd@1.0 \
    android.hardware.wifi@1.2

# GPS
PRODUCT_COPY_FILES += \
	 $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	 $(LOCAL_PATH)/configs/gps.conf:system/etc/gps_debug.conf

# Overlays
PRODUCT_PACKAGES += \
	treble-overlay-notch \
	treble-overlay-burnin

# Fingerprint Gestures
PRODUCT_PACKAGES += \
	hw-fpnav-daemon
PRODUCT_COPY_FILES += \
	device/huawei/hi6250/Fingerprint/hw-fingerprint.rc:system/etc/init/hw-fingerprint.rc \
	device/huawei/hi6250/Fingerprint/hw-fpnav:system/bin/hw-fpnav \
	device/huawei/hi6250/Fingerprint/hw-fpnav.dex:system/phh/hw-fpnav.dex \
	device/huawei/hi6250/Fingerprint/fingerprint.kl:system/phh/huawei/fingerprint.kl
