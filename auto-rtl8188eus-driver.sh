sudo su
cd /tmp
apt update
apt upgrade
apt  install dkms bc wget git
git clone https://github.com/aircrack-ng/rtl8188eus.git
rmmod r8188eu.ko
cd rtl8188eus
wget https://raw.githubusercontent.com/PentesterSoham/rtl8188eus_driver/main/rtw_br_ext.c_error --output-document=/tmp/rtl8188eus/core/rtw_br_ext.c
make && sudo make install
echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
echo "Please reboot the system..."
echo "100% done"