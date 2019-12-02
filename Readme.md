# luci setup wizard with last and next button .

# Usage

``` shell
cd luci

cp /path-to-project ./ #copy root directory to luci directory.

patch -p1 < lcui-wizard-18.06.patch #for openwrt-18.06

cd ..

make package/symlinks-install

```
Please refrence to [openWrt](https://github.com/openwrt/openwrt)

### Photoshot

![image](https://github.com/liudonghua/luci-setup-wizard/blob/master/images/next.png)

![image](https://github.com/liudonghua/luci-setup-wizard/blob/master/images/last.png)
