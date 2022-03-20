echo "           -Author,        soham biswas "
echo "check out my Youtube channel :-  https://www.youtube.com/channel/UCdEAvbBJVPw29L-FZMt5rQA "
cd /tmp
sudo apt update && sudo apt full-upgrade -y
sudo apt install dkms bc git wget build-essential libelf-dev -y
sudo apt install linux-headers-$(uname -r) -y # if you are not using kali then comment it. If your Linux distro doesn't support
sudo rmmod r8188eu.ko
git clone https://github.com/aircrack-ng/rtl8188eus.git
cd rtl8188eus
wget https://raw.githubusercontent.com/PentesterSoham/rtl8188eus_driver/main/rtw_br_ext.c_error --output-document=/tmp/rtl8188eus/core/rtw_br_ext.c
cd /tmp/rtl8188eus
sudo -i echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
sudo make
sudo make install
echo "Please reboot the system..."
echo "100% done"
