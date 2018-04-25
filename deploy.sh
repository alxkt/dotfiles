#! /bin/sh

rm -rf ~/.config/bspwm
ln -s $(pwd)/bspwm/$(hostname) ~/.config/bspwm

rm -rf ~/.config/compton
ln -s $(pwd)/compton ~/.config/compton

rm -rf ~/.core
ln -s $(pwd)/core ~/.core

rm -rf ~/.config/dunst
ln -s $(pwd)/dunst ~/.config/dunst

rm -rf ~/.config/fish
ln -s $(pwd)/fish ~/.config/fish

rm -rf ~/.themes
ln -s $(pwd)/themes ~/.themes

rm -rf ~/.config/gtk-3.0/settings.ini
ln -s $(pwd)/gtk/settings.ini ~/.config/gtk-3.0/settings.ini

rm -rf ~/.gtkrc-2.0
ln -s $(pwd)/gtk/.gtkrc-2.0 ~/.gtkrc-2.0

rm -rf ~/.config/polybar
ln -s $(pwd)/polybar/$(hostname) ~/.config/polybar

rm -f ~/.ssh/config
ln -s $(pwd)/ssh/config ~/.ssh/config 

rm -rf ~/.config/sxhkd
ln -s $(pwd)/sxhkd/$(hostname) ~/.config/sxhkd

rm -rf ~/.termcolors
ln -s $(pwd)/termcolors ~/.termcolors

rm -f ~/.Xresources
ln -s $(pwd)/system/.Xresources ~/.Xresources

rm -f ~/.gitconfig
ln -s $(pwd)/system/.gitconfig ~/.gitconfig

rm -f ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s $(pwd)/sublime_text/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

rm -f ~/.PyCharm2017.2/config/colors/Material\ Theme\ -\ Kodewolf.icls
ln -s $(pwd)/pycharm/Material\ Theme\ -\ Kodewolf.icls ~/.PyCharm2017.2/config/colors/Material\ Theme\ -\ Kodewolf.icls

# Sudo part

sudo rm -f /etc/sddm.conf
sudo cp $(pwd)/sddm/sddm.conf /etc/sddm.conf

sudo rm -rf /usr/share/sddm/themes/clairvoyance
sudo cp -r $(pwd)/sddm/clairvoyance /usr/share/sddm/themes/clairvoyance

sudo rm -f /etc/vconsole.conf
sudo ln -s $(pwd)/system/vconsole.conf /etc/vconsole.conf

sudo rm -f /etc/plymouth/plymouthd.conf
sudo ln -s $(pwd)/plymouth/plymouthd.conf /etc/plymouth/plymouthd.conf

sudo rm -f /etc/mkinitcpio.conf
sudo ln -s $(pwd)/system/mkinitcpio.conf /etc/mkinitcpio.conf
sudo mkinitcpio -p linux
