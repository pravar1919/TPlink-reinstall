chmod +x ~/install-tplink-driver.sh

~/install-tplink-driver.sh

Install 
```
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
sudo make dkms_install
```
reload system

```
ip link show
nmcli dev wifi list
```
