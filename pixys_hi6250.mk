#
# Copyright (C) 2017 The LineageOS Project
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
#
$(call inherit-product, $(LOCAL_PATH)/huawei_hi6250.mk)

# Inherit some common Pixys stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# We are Official
PIXYS_BUILD_TYPE=OFFICIAL

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := pixys_hi6250
PRODUCT_DEVICE := hi6250
PRODUCT_BRAND := huawei
PRODUCT_MODEL := huawei hi6250
PRODUCT_MANUFACTURER := huawei

# Override device name
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=hi6250


