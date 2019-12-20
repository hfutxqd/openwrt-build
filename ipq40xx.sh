#!/bin/bash

sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

touch .config
echo 'CONFIG_ALL=y' >> .config
echo 'CONFIG_TARGET_ipq40xx=y' >> .config
echo 'CONFIG_TARGET_ipq40xx_Default=y' >> .config
