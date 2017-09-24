#
# Copyright 2013 The Android Open-Source Project
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

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/bq/Aquaris5HD/prebuilt/zImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/default.prop:default.prop

PRODUCT_COPY_FILES += \
    device/bq/Aquaris5HD/recovery/init.recovery.usb.rc:root/init.recovery.usb.rc

#PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/prebuilt/sh:sbin/sh

#LOCAL_CURTAIN := device/bq/Aquaris5HD/recovery/twres/images/curtain.jpg

#PRODUCT_COPY_FILES += \
	$(LOCAL_CURTAIN):recovery/root/twres/images/curtain.jpg

$(call inherit-product-if-exists, vendor/bq/Aquaris5HD/device-vendor.mk)
