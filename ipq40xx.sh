#!/bin/bash

sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

make defconfig
sed -i 's/# CONFIG_ALL .*/CONFIG_ALL=y/' .config
sed -i 's/# CONFIG_TARGET_ipq40xx .*/CONFIG_TARGET_ipq40xx=y/' .config
sed -i 's/# CONFIG_TARGET_ipq40xx_Default .*/CONFIG_TARGET_ipq40xx_Default=y/' .config
