# Copyright (C) 2011-2013 The CyanogenMod Project
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

-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/anzu/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH += device/semc/anzu/include \

$(shell mkdir -p out/target/product/anzu/obj/KERNEL_OBJ/usr)

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/anzu/bluedroid

# Kernel
TARGET_KERNEL_CONFIG := nAa_anzu_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

# Assert
TARGET_OTA_ASSERT_DEVICE := LT18i,LT18a,LT15i,LT15a,anzu

# HDMI
TARGET_QCOM_HDMI_OUT := false

# CM Hardware tunables
BOARD_HARDWARE_CLASS += device/semc/anzu/cmhw
