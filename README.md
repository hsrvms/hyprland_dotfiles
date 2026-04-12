
# In case if GTK breakes something
gsettings reset org.gnome.desktop.interface gtk-theme
gsettings reset org.gnome.desktop.interface color-scheme
gsettings reset org.gnome.desktop.interface icon-theme
mv ~/.config/gtk-3.0 ~/.config/gtk-3.0.bak
mv ~/.config/gtk-4.0 ~/.config/gtk-4.0.bak
Comment out lines like these if you find them:
env = GTK_THEME, Some-Dark-Theme
