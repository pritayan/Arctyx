# 🌌 Arctyx — The Aesthetic EWW Bar for Hyprland  
**By [Pritayan](https://github.com/pritayan)**  

> ⚔️ _Replace Waybar. Reclaim your screen._

Arctyx is a modular, animated, and beautifully themed **EWW bar** designed for **Hyprland**.  
Crafted with **performance**, **style**, and **minimal distraction** in mind.

![Screenshot](https://github.com/pritayan/Arctyx/blob/05b9c2eba7b6eec96613c631fe216959b2f392e0/Screenshots/image.png)

---

## 🚀 Features

- 📦 **Modular Widgets** — Music, Time, Weather, System Info & more  
- 🎨 **Dark Translucent Theme** — Fully SCSS-styled  
- 🎵 **MPRIS Music Integration** — Spotify, etc. via `playerctl`  
- 📶 **Live System Stats** — Battery, Volume, Brightness via shell scripts  
- 🖥️ **Popup Based Design** — Minimalist overlays, not panels  
- 🧠 **Defpoll for Speed** — Snappy widget updates  
- 🧼 **Commented Code** — Clean `.yuck` and `.scss` for easy tweaking  
- 🧪 **Wayland Compatible** — Built for Hyprland + Pipewire

---

## 🛠 Requirements

Make sure these are installed:

- [Hyprland](https://github.com/hyprwm/Hyprland) (Wayland WM)  
- [EWW](https://elkowar.github.io/eww/) (Latest version)  
- `playerctl`, `pamixer`, `brightnessctl`, `awk`, `date`, `whoami`, `hostname`  
- Basic shell tools and config knowledge  

---

## 📁 File Structure Overview


**CONFIGURATION OVERVIEW**
-.
-├── eww.yuck       # EWW layout (widgets + windows)
-├── eww.scss       # All widget styling in SCSS
-├── config.yaml    # Global configuration
-├── scripts/       # Custom shell scripts
-└── assets/        # Optional: for music art / background (not included yet)

---

---
> 🙄 **AND YES, IT’S `scripts/` NOT `scriTps/`** 😂
---
📝 [NOTE]

    There could be errors and bugs right now as I am still working on this.
    Changes and edits are welcome. Join me in making it more advanced and Frost-cool!!!
---


---
## 🤝 ## Contribution Welcome!
Arctyx is still evolving — and your help can shape it into something powerful and polished. Whether it's:

Reporting bugs

Suggesting new features

Writing or improving scripts

Enhancing the UI/UX

Or just refining the documentation...

You're welcome to open issues, make pull requests, or share ideas.
No contribution is too small. Let’s build this together — for the community, by the community.

📬 DM me or start a discussion — I'm always open to collaborations!
---


## Tips
Tips (do after installation)

-You can use a systemd service or autostart Arctyx with Hyprland by adding it to your config.

-Position the launcher icon using Hyprland rules if needed.

-Adjust paths inside .sh files if your directories differ.

-Add keybinds in Hyprland config to toggle eww open & eww close for convenience.

-Avoid autostarting popups; use scripts or keybinds for more control.

-Plan a fallback “kill switch” if widgets hide before quitting EWW.
---

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

