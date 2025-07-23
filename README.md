ARCTYX


1. Project Banner / Title
2. About (short & punchy intro)
3. Features
4. Screenshots (with your attached image)
5. Requirements
6. Installation
7. Configuration Overview
8. Credits
9. License


# 🌌 Arctyx — The Aesthetic EWW Bar for Hyprland

> ⚔️ Replace Waybar. Reclaim your screen. Style your desktop the way **LORD ZOVRATH** intended.

Arctyx is a modular, animated, and beautifully themed [EWW](https://github.com/elkowar/eww) widget system designed for **Hyprland**. Crafted with performance, style, and minimal distraction in mind.

![Screenshot](./4eeed2fe-b577-4d57-964d-5b09358c245f.png)

---

## 🚀 Features

- 📦 Modular widgets (Music, Time, Weather, System Info)
- 🎨 Full SCSS-based styling (dark translucent theme)
- 🎵 Music integration with MPRIS (Spotify, etc.)
- 📶 Live system info via custom shell scripts
- 🖥️ Designed for full floating popup usage
- 🧠 Fast updates using `defpoll`
- 🧼 Cleaned & commented `yuck` and `scss` files
- 🧪 Compatible with Hyprland + Pipewire + Wayland

---

## 🛠 Requirements

- **Hyprland** (wayland WM)
- **EWW** (latest version)
- `playerctl` (for music widgets)
- `pamixer`, `brightnessctl`, `network scripts`
- `bash`, `awk`, `date`, `hostname`, `whoami`, etc.

---

**CONFIGURATION OVERVIEW**
-.
-├── eww.yuck       # EWW layout (widgets + windows)
-├── eww.scss       # All widget styling in SCSS
-├── config.yaml    # Global configuration
-├── scripts/       # Custom shell scripts
-└── assets/        # Optional: for music art / background (not included yet)


## AND THAT'S 'SCRIPTS' NOT 'SCRITPS' ...... 

## 📦 Installation

```bash
# Clone the repo
git clone https://github.com/pritayan/Arctyx ~/.config/eww

# Make sure eww is installed and running
eww daemon &

# Change directory to eww
cd ~/.config/eww

# Open your window by running the script 
./ewwloader.sh

# Make the script executable (if not)
sudo chmod +x ewwloader.sh




