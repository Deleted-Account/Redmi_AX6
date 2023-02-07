#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#


# Modify default IP
sed -i 's/10.10.10.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate


# 修改连接数数
# sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 修正连接数（by ベ七秒鱼ベ）
# sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf


# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's/$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7/:0:0:99999:7/g' package/base-files/files/etc/shadow
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings


# 移除不用软件包  
# rm -rf package/lean/luci-app-ttyd
# rm -rf feeds/packages/utils/ttyd

# rm -rf package/lean/luci-theme-argon
# rm -rf feeds/packages/luci-app-argon-config

# rm -rf package/kernel/mac80211/files/lib/wifi

# rm -rf package/lean/reclone*
# rm -rf package/lean/luci-app-zerotier

# rm -rf package/lean/pdnsd-alt

# rm -rf package/lean/luci-app-easymesh

# 添加额外非必须软件包
# git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
# git clone https://github.com/vernesong/OpenClash.git package/OpenClash

# svn co https://github.com/jarod360/packages/trunk/ttyd package/ttyd
# git clone https://github.com/jarod360/luci-app-ttyd package/luci-app-ttyd
# svn co https://github.com/jarod360/openwrt/trunk/package/kernel/mac80211/files/lib/wifi package/kernel/mac80211/files/lib/wifi

# git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
# git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng
# svn co https://github.com/Boos4721/openwrt/trunk/package/lean/luci-app-cpufreq package/luci-app-cpufreq


# ServerChan
rm -rf package/luci-app-serverchan
rm -rf package/lean/luci-app-serverchan
rm -rf feeds/luci/applications/luci-app-serverchan

git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan


# Add theme(s)
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# git clone https://github.com/thinktip/luci-theme-neobird package/luci-theme-neobird
# sed -i 's/shadowsocksr/passwall/g' package/luci-theme-neobird/luasrc/view/themes/neobird/header.htm

git clone https://github.com/sdf8057/luci-theme-design package/luci-theme-design

# Smartdns
rm -rf package/luci-app-smartdns
rm -rf package/lean/luci-app-smartdns
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf package/smartdns
rm -rf package/lean/smartdns
rm -rf feeds/luci/applications/smartdns

git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# Kick-ass
# git clone https://github.com/zaiyuyishiyoudu/luci-app-kickass package/luci-app-kickass

# Merge Lean's EasyMesh
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-easymesh package/luci-app-easymesh


# CPU Freq
# rm -rf package/luci-app-cpufreq
# rm -rf package/lean/luci-app-cpufreq 
# rm -rf feeds/luci/applications/luci-app-cpufreq

# # svn co https://github.com/Boos4721/openwrt/trunk/package/lean/luci-app-cpufreq package/luci-app-cpufreq
# # svn co https://github.com/Boos4721/luci/trunk/applications/luci-app-cpufreq feeds/luci/applications/luci-app-cpufreq
# # svn co https://github.com/Boos4721/luci/trunk/applications/luci-app-cpufreq package/luci-app-cpufreq
# # svn co https://github.com/sdf8057/luci/trunk/applications/luci-app-cpufreq package/luci-app-cpufreq
# svn co https://github.com/sdf8057/luci/branches/1806/applications/luci-app-cpufreq package/luci-app-cpufreq
# svn co https://github.com/sdf8057/luci/branches/1806/applications/luci-app-cpufreq package/lean/luci-app-cpufreq 
# svn co https://github.com/sdf8057/luci/branches/1806/applications/luci-app-cpufreq feeds/luci/applications/luci-app-cpufreq

# svn co https://github.com/sdf8057/luci/trunk/applications/luci-app-cpufreq package/luci-app-cpufreq
# svn co https://github.com/sdf8057/luci/trunk/applications/luci-app-cpufreq package/lean/luci-app-cpufreq 
# svn co https://github.com/sdf8057/luci/trunk/applications/luci-app-cpufreq feeds/luci/applications/luci-app-cpufreq


# svn co https://github.com/Boos4721/openwrt/trunk/config config
# svn co https://github.com/Boos4721/openwrt/trunk/include include
# svn co https://github.com/Boos4721/openwrt/trunk/package package
# svn co https://github.com/Boos4721/openwrt/trunk/scripts scripts
# svn co https://github.com/Boos4721/openwrt/trunk/target target
# svn co https://github.com/Boos4721/openwrt/trunk/toolchain toolchain
# svn co https://github.com/Boos4721/openwrt/trunk/tools tools


# Passwall
rm -rf package/luci-app-passwall
rm -rf package/lean/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall

svn co https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/shadowsocksr-libev package/shadowsocksr-libev
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/simple-obfs package/simple-obfs
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/tcping
