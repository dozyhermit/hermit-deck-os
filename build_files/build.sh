#!/bin/bash

set -ouex pipefail

### Packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs/removes packages from fedora repositories
# example: dnf5 install -y tmux 

# this removes gnome extension manager and extensions
gsettings set org.gnome.shell disable-user-extensions true
rm -rf /usr/share/gnome-shell/extensions ~/.local/share/gnome-shell/extensions

# this removes dnf packages
dnf5 remove -y firewall-config btrfs-assistant lutris 

# this removes webapp-manager
dnf5 remove -y webapp-manager
rm -rf /usr/lib/webapp-mananger

# this removes rom-properties
dnf5 remove -y rom-properties
rm -rf /usr/share/rom-properties

# this removes distrobox
dnf5 remove -y distrobox
rm -rf /etc/distrobox /usr/etc/distrobox

# this removes hhd
dnf5 remove -y hhd hhd-ui
rm -rf /etc/hhd
rm -rf /usr/share/applications/hhd-ui /usr/share/applications/hhd-ui.desktop

# this removes waydroid
dnf5 remove -y waydroid
rm -rf /var/lib/waydroid /home/.waydroid ~/waydroid ~/.share/waydroid ~/.local/share/applications/*aydroid* ~/.local/share/waydroid /usr/share/applications/Waydroind /usr/share/applications/*aydroid* /usr/libexec/*aydroid* /usr/lib/*aydroid*

# this removes tailscale
dnf5 remove -y tailscale
rm -rf /var/lib/tailscale/tailscaled.state

# this removes bbrew
rm -rf /usr/share/applications/bbrew.desktop /usr/bin/bbrew-helper /usr/sbin/bbrew-helper

# this removes application icons if they're left over
rm -rf  /usr/share/applications/btrf-assistant.desktop /usr/share/applications/com.gerbilsoft.rom-properties.rp-config.desktop

# this cleans dnf
dnf5 clean all

### Configurations

# this configures applications and environments
# example: systemctl enable docker.service

# this runs a configuration
