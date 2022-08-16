echo "Installing required packages"
sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel python3 python3-pip nitrogen dmenu xinit make picom alacritty yash
sudo pip install pywal

echo "Compiling dwm"
cd dwm
sudo make clean install
cd ..

echo "Copying essential files"
cp -r Wallpapers ~/
cp configs/.xinitrc ~/
cp -r configs/picom ~/.config/
cp conigs/.yashrc

echo "Changing default terminal"
chsh -s /bin/yash

echo "Installing terminal colorscheme"
wal -i Wallpapers/main.jpg
