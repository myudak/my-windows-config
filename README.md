# My Windows Configuration

This README provides an overview of the tools and applications I use to configure and customize my Windows environment.

## Applications List

- **Winget**: Windows Package Manager for installing and managing applications.
- **Winfetch**: A command-line tool that displays system information beautifully.
- **YASB**: Yet Another Status Bar, a customizable status bar for Windows.
- **Neovim (nvim)**: A highly configurable text editor, an improved version of Vim.
- **Oh My Posh**: A prompt theme engine for any shell, providing a powerful way to customize your prompt.
- **Komorebi**: A tiling window manager for Windows.

## Installation

### Winget

Winget is a command-line package manager for Windows. To install Winget, ensure you have Windows Package Manager installed on your system.

### Winfetch

To install Winfetch using Winget, run:

```powershell
winget install Winfetch
```

### YASB

To install YASB using Winget, run:

```powershell
winget install YASB
```

### Neovim (nvim)

To install Neovim using Winget, run:

```powershell
winget install Neovim
```

### Oh My Posh

To install Oh My Posh using Winget, run:

```powershell
winget install OhMyPosh
```

### Komorebi

Komorebi may not be available through Winget. You can manually download it from the [Komorebi GitHub page](https://github.com/LGUG2Z/komorebi/releases) and follow the installation instructions provided there.

## Configuration

### Winfetch

To customize Winfetch, edit the configuration file located at `~/.config/winfetch/config`.

### YASB

To customize YASB, edit the configuration file located at `~/.config/yasb/config`.

### Neovim (nvim)

To configure Neovim, create or edit the `init.vim` file located at `~/.config/nvim/init.vim`.

### Oh My Posh

To configure Oh My Posh, create or edit the `~/.poshthemes` file and set your desired theme.

### Komorebi

To configure Komorebi, edit the configuration file located in the Komorebi installation directory.

## Conclusion

This configuration setup aims to provide a powerful and customizable Windows environment, leveraging tools commonly used in Unix-like systems. Feel free to explore and tweak the settings to fit your workflow!
