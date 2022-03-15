echo "  -Author, soham biswas "
echo "check out my Youtube channel :-  https://www.youtube.com/channel/UCdEAvbBJVPw29L-FZMt5rQA "
cd /tmp
sudo apt update
sudo apt upgrade
sudo apt  install dkms bc wget git
sudo git clone https://github.com/aircrack-ng/rtl8188eus.git
sudo rmmod r8188eu.ko
sudo cd rtl8188eus
sudo wget https://raw.githubusercontent.com/PentesterSoham/rtl8188eus_driver/main/rtw_br_ext.c_error --output-document=/tmp/rtl8188eus/core/rtw_br_ext.c
cd /tmp/rtl8188eus/core
sudo make && sudo make install
sudo echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
echo "Please reboot the system..."
echo "100% done"
