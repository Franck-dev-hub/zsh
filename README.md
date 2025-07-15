# Zsh Configuration with Oh My Posh

This folder contains my custom Zsh shell configuration, enhanced with [Oh My Posh](https://ohmyposh.dev/).

## Prerequisites

- **Zsh**: A powerful and customizable shell.
- **Oh My Posh**: A modern and aesthetic prompt for your terminal.
- (Optional) **Nerd Fonts**: For optimal display of icons and symbols.

## Installation

<details>
<summary><strong>Arch Linux</strong></summary>

```sh
sudo pacman -S zsh oh-my-posh ttf-nerd-fonts-symbols
```

</details>

<details>
<summary><strong>Debian / Ubuntu</strong></summary>

```sh
sudo apt update
sudo apt install zsh wget
# Installer Oh My Posh
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O oh-my-posh
sudo install oh-my-posh /usr/local/bin/
# Installer une Nerd Font (exemple avec FiraCode)
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
unzip FiraCode.zip -d ~/.local/share/fonts
fc-cache -fv
```

</details>

<details>
<summary><strong>Fedora</strong></summary>

```sh
sudo dnf install zsh oh-my-posh
# Installer une Nerd Font (exemple avec FiraCode)
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
unzip FiraCode.zip -d ~/.local/share/fonts
fc-cache -fv
```

</details>

4. **Configure Zsh to use Oh My Posh**:
   Add the following line to your `.zshrc` file:
   ```sh
   eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/theme.omp.json)"
   ```
   Adjust the path to the configuration file as needed.

## Customization

- The Oh My Posh theme configuration file (`theme.omp.json`) is located in this folder or wherever you prefer.
- Edit this file to customize your prompt (colors, segments, icons, etc.).

## Tested on
 - Arch linux

---

Feel free to adapt this configuration to your needs!
