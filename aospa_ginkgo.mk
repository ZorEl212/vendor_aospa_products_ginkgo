
# Copyright (C) 2022 Paranoid Android
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

ifeq (aospa_ginkgo,$(TARGET_PRODUCT))

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Resolution for bootanimation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ginkgo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_NAME := aospa_ginkgo

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
endif
