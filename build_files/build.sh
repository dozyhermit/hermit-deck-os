#!/bin/bash

set -ouex pipefail

### Packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs/removes packages from fedora repos or flatpak
# example: dnf5 install -y tmux 

# this removes flatpak packages
xargs -r flatpak remove -y --noninteractive app/com.github.Matoking.protontricks/x86_64/stable app/com.github.tchx84.Flatseal/x86_64/stable app/io.github.flattool.Warehouse/x86_64/stable app/com.vysp3r.ProtonPlus/x86_64/stable app/org.gnome.Calculator/x86_64/stable app/org.gnome.Calendar/x86_64/stable app/org.gnome.Characters/x86_64/stable app/org.gnome.Contacts/x86_64/stable app/org.gnome.Papers/x86_64/stable app/org.gnome.Loupe/x86_64/stable app/org.gnome.TextEditor/x86_64/stable app/org.gnome.Weather/x86_64/stable app/org.gnome.baobab/x86_64/stable app/org.gnome.clocks/x86_64/stable app/org.gnome.font-viewer/x86_64/stable app/org.gnome.Showtime/x86_64/stable app/org.altlinux.Tuner/x86_64/stable app/com.github.Matoking.protontricks/x86_64/stable runtime/com.obsproject.Studio.Plugin.OBSVkCapture/x86_64/stable runtime/com.obsproject.Studio.Plugin.Gstreamer/x86_64/stable runtime/com.obsproject.Studio.Plugin.GStreamerVaapi/x86_64/stable runtime/org.freedesktop.Platform.VulkanLayer.MangoHud/x86_64/25.08 runtime/org.freedesktop.Platform.VulkanLayer.vkBasalt/x86_64/25.08 runtime/org.freedesktop.Platform.VulkanLayer.OBSVkCapture/x86_64/25.08 app/io.missioncenter.MissionCenter/x86_64/stable

# there's a bug with DistroShelf in that it may error when trying to uninstall, 
# so i'm keeping it out of the above and attempting uninstall twice for posterity
xargs -r flatpak remove -y --noninteractive app/com.ranfdev.DistroShelf/x86_64/stable
xargs -r flatpak remove -y --noninteractive app/com.ranfdev.DistroShelf/x86_64/stable

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
xargs -r waydroid session stop
xargs -r waydroid container stop
dnf5 remove -y waydroid
rm -rf /var/lib/waydroid /home/.waydroid ~/waydroid ~/.share/waydroid ~/.local/share/applications/*aydroid* ~/.local/share/waydroid /usr/share/applications/Waydroind /usr/share/applications/*aydroid* /usr/libexec/*aydroid* /usr/lib/*aydroid*

# this removes tailscale
dnf5 remove -y tailscale
rm -rf /var/lib/tailscale/tailscaled.state

# this removes bbrew
rm -rf /usr/share/applications/bbrew.desktop /usr/bin/bbrew-helper /usr/sbin/bbrew-helper

## this removes the gnome extension manager and extensions
xargs -r gsettings set org.gnome.shell disable-user-extensions true
xargs -r flatpack remove -y --noninteractive com.mattjakeman.ExtensionManager
rm -rf /usr/share/gnome-shell/extensions ~/.local/share/gnome-shell/extensions

#  this removes application icons if they're left over
rm -rf  /usr/share/applications/btrf-assistant.desktop /usr/share/applications/com.gerbilsoft.rom-properties.rp-config.desktop

### Scripts

# this runs scripts created or added by bazzite or fedora silverblue
# example: ujust setup tailscale

# this runs ujust scripts
xargs -r ujust setup-sunshine
xargs -r ujust setup-decky
xargs -r ujust clean-system