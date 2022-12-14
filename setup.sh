echo "Installing required packages"
#sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel python3 python3-pip nitrogen dmenu xinit make picom alacritty yash xorg ImageMagick
sudo apt install make gcc libx11-dev libxft-dev libxinerama-dev xorg python3 python3-pip dmenu xinit picom yash 
sudo pip install pywal

echo "Compiling dwm"
cd dwm
sudo make clean install
cd ..

echo "Copying essential files"
cp -r Wallpapers ~/
cp configs/.xinitrc ~/
cp -r configs/picom ~/.config/
cp conigs/.yashrc ~/
sudo cp fonts/* /usr/share/fonts/

echo "Changing default terminal"
chsh -s /usr/bin/yash

echo "Installing terminal colorscheme"
wal -i Wallpapers/macos.jpg

