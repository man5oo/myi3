1. **Hardware**

| Componente | Specifica |
|---|---|
| CPU | Intel Core i7-5500U, Broadwell, 2c/4t, 2.4–3.0 GHz |
| GPU | Intel HD Graphics 5500 (integrata) |
| RAM | 8 GB LPDDR3 |
| Schermo | 13.3" IPS 2560×1440 |
| Wi-Fi/BT | Intel Dual Band Wireless-AC 7265 (Wi-Fi 5 + Bluetooth 4.0) |
| Audio | Intel Broadwell-U Audio Controller |

2. **Packages**

```
sudo pacman -S --needed - < assets/packages.txt
```

3. **yay + AUR packages**

```
cd /tmp && git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
yay -S --needed - < ~/my-i3/assets/packages-aur.txt
```

4. **Dotfiles**

```
cp -a dotfiles/. ~/
mkdir -p ~/Pictures/Wallpapers ~/Pictures/Screenshots
cp Wallpapers/* ~/Pictures/Wallpapers/
xdg-user-dirs-update
```

5. **Others**

```
sudo systemctl enable --now NetworkManager bluetooth power-profiles-daemon
```
