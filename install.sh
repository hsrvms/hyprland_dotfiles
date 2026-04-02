#!/bin/bash
set -e

echo "1. Installing core packages..."
sudo pacman -S --needed rofi-wayland waybar ttf-nerd-fonts-symbols zed
paru -S --needed kmonad-static

echo "2. Setting up KMonad system permissions..."
# Add your user to the input group
sudo usermod -aG input $USER

# Ensure the uinput kernel module loads on boot
sudo modprobe uinput
echo "uinput" | sudo tee /etc/modules-load.d/uinput.conf

# Create the udev rules to grant the input group access to uinput
sudo tee /etc/udev/rules.d/90-kmonad.rules << 'EOF'
KERNEL=="uinput", MODE="0660", GROUP="input", OPTIONS+="static_node=uinput"
SUBSYSTEM=="input", GROUP="input", MODE="0660"
EOF

# Reload udev rules so they apply instantly
sudo udevadm control --reload-rules
sudo udevadm trigger

echo "3. Creating dotfile symlinks..."
# Create the .config directories just in case they don't exist yet
mkdir -p ~/.config

# Create the symlinks
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/rofi ~/.config/rofi
ln -sf ~/dotfiles/kmonad ~/.config/kmonad
ln -sf ~/dotfiles/zed ~/.config/zed
ln -sf ~/dotfiles/warp-terminal ~/.config/warp-terminal

echo ""
echo "System setup complete!"
echo "WARNING: You must reboot your computer for the 'input' group permissions to take effect before KMonad will work."
