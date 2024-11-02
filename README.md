###### *<div align="right"><sub>// design by t2</sub></div>*
<div align = center>
    <a href="https://discord.gg/AYbJ9MJez7">
<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">
    </a>
</div>

<div align="center">

![hyde_banner](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/hyde_banner.png)

<br>

  <a href="#installation"><kbd>​<br>​Installation​<br>​</kbd></a>&ensp;&ensp;
  <a href="#themes"><kbd>​<br>​Themes​<br>​</kbd></a>&ensp;&ensp;
  <a href="#styles"><kbd>​<br>​Styles​<br>​</kbd></a>&ensp;&ensp;
  <a href="#keybindings"><kbd>​<br>​Keybindings​<br>​</kbd></a>&ensp;&ensp;
  <a href="https://www.youtube.com/watch?v=2rWqdKU1vu8&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY&index=1"><kbd>​<br>​Youtube​<br>​</kbd></a>&ensp;&ensp;
  <a href="https://github.com/prasanthrangan/hyprdots/wiki"><kbd>​<br>​Wiki​<br>​</kbd></a>&ensp;&ensp;
  <a href="https://discord.gg/qWehcFJxPa"><kbd>​<br>​Discord​<br>​</kbd></a>

</div><br><br>

## About this Fork

This project is a fork of [prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots), originally created by Prasanth Rangan for the HyDe project. This fork brings modifications to adapt it to specific needs while maintaining the same structure and features.

## License

This project is distributed under the **GNU General Public License v3.0 (GPL-3.0)**, in accordance with the conditions of the original project. All modified or added files are also licensed under GPL-3.0. Please refer to the `LICENSE` file for more details.

## Installation

The installation script is designed for a minimal [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) install, but **may** work on some [Arch-based distros](https://wiki.archlinux.org/title/Arch-based_distributions).
While installing HyDE alongside another [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) should work, due to it being a heavily customized setup, it **will** conflict with your [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt) theming, [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https://wiki.archlinux.org/title/GRUB), etc. and is at your own risk.

For Nixos support there is a separate project being maintained @ [Hydenix](https://github.com/richen604/hydenix/tree/main)

> [!IMPORTANT]
> The install script will auto-detect an NVIDIA card and install nvidia-dkms drivers for your kernel.
> Please ensure that your NVIDIA card supports dkms drivers in the list provided [here](https://wiki.archlinux.org/title/NVIDIA).

> [!CAUTION]
> The script modifies your `grub` or `systemd-boot` config to enable NVIDIA DRM.

To install, execute the following commands:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/your_username/hyprdots ~/HyDE
cd ~/HyDE/Scripts
./install.sh
```

> [!TIP]
> You can also add any other apps you wish to install alongside HyDE to `Scripts/custom_apps.lst` and pass the file as a parameter to install it like so:
>
> ```shell
> ./install.sh custom_apps.lst
> ```

Please reboot after the install script completes and takes you to the SDDM login screen (or black screen) for the first time.
For more details, please refer to the [installation wiki](https://github.com/prasanthrangan/hyprdots/wiki/Installation).

### Updating
To update HyDE, you will need to pull the latest changes from GitHub and restore the configs by running the following commands:

```shell
cd ~/HyDE/Scripts
git pull
./install.sh -r
```

> [!IMPORTANT]
> Please note that any configurations you made will be overwritten if listed to be done so as listed by `Scripts/restore_cfg.lst`.
> However, all replaced configs are backed up and may be recovered from in `~/.config/cfg_backups`.

<div align="center">

## Acknowledgments

Thanks to [prasanthrangan](https://github.com/prasanthrangan) for his work on the HyDe project. This fork is based on his HyDe dotfiles configuration for Hyprland.

</div>
