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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common.mk)

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true

$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := huawei_hi6250
PRODUCT_DEVICE := hi6250
PRODUCT_BRAND := huawei
PRODUCT_MODEL := huawei hi6250
PRODUCT_MANUFACTURER := huawei



