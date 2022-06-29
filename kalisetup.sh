#!/bin/bash 

# Nix Pentesting Box Setup - v2 
# nixptsetup.sh
# The purpose of this simple script is to automate the setup of my Kali VM after a fresh installation to save time and effort 

printf "Debian-based Pentesting Post-Installation Setup Script \n\n"
printf "Task List...  \n"
printf "1. Opening my five favorite Firefox addons (uBlock, Wappalyzer, Netcraft, Shodan, and FoxyProxy)  \n"
printf "2. Downloading Elliot Alderson's Mr. Robot wallpaper  \n"
printf "3. Downloading Evil-WinRM, Impacket, and LinEnum into a folder called tools on the Desktop  \n"
printf "4. Installing Terminator terminal  \n"
printf "5. Adding useful aliases to the bash profile  \n"
printf "6. Installing some useful applications  \n"
printf "7. Download three custom wordlists  \n"
printf "\n\n\n\n"


printf "Opening webpages for useful browser extension...\n"
sleep 2
firefox https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/ & firefox https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/ & firefox https://addons.mozilla.org/en-US/firefox/addon/netcraft-toolbar/ & firefox https://addons.mozilla.org/en-US/firefox/addon/shodan_io/ & firefox https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/ & firefox https://drive.google.com/drive/my-drive
printf "\n\n\n" 

# Downloading Elliot Alderson's wallpaper and applying to desktop background
printf "Downloading wallpaper...\n"
sleep 2
wget i.imgur.com/ozsp8gW.jpg 
printf "\n\n\n" 

# Creating folder on Desktop labeled 'tools' and installing Impacket and Evil-WinRM 
printf "Grabbing Evil-WinRM, Impacket, and LinEnum...\n"
sleep 2
mkdir ~/Desktop/tools 
cd ~/Desktop/tools
git clone https://github.com/SecureAuthCorp/impacket.git
git clone https://github.com/Hackplayers/evil-winrm.git
git clone https://github.com/rebootuser/LinEnum.git
printf "\n\n\n"   

# Installing Terminator 
printf "Installing Terminator and configurations...\n"
sleep 2
sudo apt install terminator -y
> ~/.config/terminator/config
{
	sudo echo "[global_config]"
  	sudo echo "  [title_transmit_bg_color = \"#2e3436\""
	sudo echo "  title_inactive_bg_color = \"#000000\""
	sudo echo "[keybindings]"
	sudo echo "[profiles]"
	sudo echo "  [[default]]"
	sudo echo "    cursor_color = \"#aaaaaa\""
	sudo echo "    scrollback_infinite = True"
	sudo echo "[layouts]"
	sudo echo "  [[default]]"
	sudo echo "    [[[window0]]]"
	sudo echo "      type = Window"
	sudo echo "      parent = \"\""
	sudo echo "    [[[child1]]]"
	sudo echo "      type = Terminal"
	sudo echo "      parent = window0"
	sudo echo "[plugins]"
} >> ~/.config/terminator/config
printf "\n\n\n"  

# Adding some useful aliases to the bash profile
printf "Adding some useful aliases to the bash profile...\n"
sleep 2
echo "alias eip='wget http://ipecho.net/plain -O - -q ; echo'" >> ~/.bashrc
echo "export PS1=\"\e[0;40m[\u@\h \W]\$ \e[m \"" >> ~/.bashrc
echo "alias lsa='ls -lah'" >> ~/.bashrc 
echo "alias aaa='cd ~/Desktop'" >> ~/.bashrc
echo "alias grepip='grep -oE \"\b([0-9]{1,3}\.){3}[0-9]{1,3}\b\"'" >> ~/.bashrc
echo "alias www = ‘python -m SimpleHTTPServer 8000’" >> ~/.bashrc
echo "alias ncrip='openssl aes-256-cbc -a -in msg.txt && wipe -f msg.txt && touch msg.txt && echo " " && echo "Character Count Confirmation" && wc -m msg.txt'" >> ~/.bashrc
printf "\n\n\n"  

# Install multiple programs - Irssi for IRC, Bleachbit for cleaning, Veil-Evasion for creating stealthy payloads, Cmatrix for hacker aesthetics, and Geany for an IDE
printf "Installing some applications...\n\n\n"
sleep 2
sudo apt install irssi -y
sudo apt install bleachbit -y
sudo apt install veil -y
sudo apt install cmatrix -y
sudo apt install geany -y 
sudo apt install speedtest-cli -y 
sudo apt install vim -y
sudo apt install htop -y
sudo apt install net-tools -y
sudo apt install build-essential -y
sudo apt install git -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install open-vm-tools -y
sudo apt install open-vm-tools-desktop -y
sudo apt install gobuster -y

printf "\n\n\n"  

# Downloading wordlists (NEED TO FINISH)
#printf "Downloading wordlists...\n"
#sleep 2
#mkdir /usr/share/wordlists/custom 
#cd /usr/share/wordlists/custom 
#wget https://doc-04-c8-docs.googleusercontent.com/docs/securesc/j2q6ie7lloi21bu875gqt4mautf4m6af/hafancoemqmit55gvsg9huj8d3418ug8/1650398100000/08697108307613439653/08697108307613439653/1213Ffl0gI7bdqRzyIXSR5TIf7jtIUjzM?e=download&ax=ACxEAsYtGDnf1-J0TcJkkR9NXOfdE-xiA7KQ3lNmNcNCKGY7tdirGgTzAB79SSe7bAlLfZLFf50om2LDZjVMcPJYlvAM9dP5OZYk-P38TQKNxsJ9aTm9qELqiPncCGCN-YGGOla4n4uVSUbFU2C-4dTBeTgFBxrmnuYlVXN729XjezG9ZPfGUyS8bQfw8H9XmiDvQGH2-qJOc1IVjFrzVLJL6N_1RfIxOu9HM9tCVYa_mmHHPEypPIjQjrE6WbM_6n-AjxQqPCzm3WT8vh2Z43fdJDQ6CtARPbhrfBZN5WxoaunDpabtnAcLY6fzHwzslQ3f9dtMGNM4omjTdZRNCNOXK-9EVJkThGbmn43XuWu-W7ovjka3ePgVpxlwckcfGDXzZolEd-xp91cRksH4JsuNrIDZtRf6_4AOlYRj9fDrLWfQIWSLApY_4Bd2hSLFGWUFA8s2HL4Ekoj830JLpKuYi7UBpfRUJFO0907RVY878pnqB8MJlAJC8KMDN0bPM-7Psih57QPfD7iadSS6kY8alL_gc-rd24KVb6pok3zq30gq72QPW10LED6dOuKDE3N6x4cTEYWUTvRCIlgAlFcWE1NkfS6m4gohUE3iywt1WAmf8d_SlzJYKEgB4ZfqFHP9lVemecoKl0o0zaTkKuKeV3EdYtmTeHm-OQQrXdcPv4FA-oM4mUChYDAaxaGvTNvH69zJwawVGKTDCiUCuR-AFUyrCcYPbm05dMfldxshCEHeKQrY45F1BLfIhVhT0zwBd1SaXSwUe8TAF7PWoWJBuuje2bP2C-bGD0SwXrhFpl875UTY9vve1l_gFWPSZG83btjXT34zC9jQEzrakPS81zTe73W0O8T2y07awKOJg3gGbr1d-EoIIs0g7TgSAA-fH-3CSiEm-GWqj_f80ZsOf5DQKPyl0ZYL&authuser=6&nonce=1581tvpj4fvna&user=08697108307613439653&hash=9tupdho99anqte28favcv2hl8245nsmi
#wget https://drive.google.com/file/d/1P_Qzl4nQMD0bQnkO-7ra_hEMGWI0MqSb/view?usp=sharing
#wget https://drive.google.com/file/d/1VuY6B5x8D_6ZZtNUxN-dTKIMlyJ9NRsm/view?usp=sharing
#cd ~
#printf "\n\n\n" 

echo "FINISHING CHECK LIST"
echo "1. Configure network adapter settings to suit your preferences"
echo "2. Take snapshot if applicable" 
echo "3. Install updates/upgrades"
