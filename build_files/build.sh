#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs/removes a package from fedora repos
# dnf5 install -y tmux 

# this installs/removes a package from flatpak repos
xargs -r flatpak remove -y --noninteractive app/com.github.Matoking.protontricks/x86_64/stable app/com.ranfdev.DistroShelf/x86_64/stable app/com.github.tchx84.Flatseal/x86_64/stable app/io.github.flattool.Warehouse/x86_64/stable app/com.vysp3r.ProtonPlus/x86_64/stable app/org.gnome.Calculator/x86_64/stable app/org.gnome.Calendar/x86_64/stable app/org.gnome.Characters/x86_64/stable app/org.gnome.Contacts/x86_64/stable app/org.gnome.Papers/x86_64/stable app/org.gnome.Loupe/x86_64/stable app/org.gnome.NautilusPreviewer/x86_64/stable app/org.gnome.TextEditor/x86_64/stable app/org.gnome.Weather/x86_64/stable app/org.gnome.baobab/x86_64/stable app/org.gnome.clocks/x86_64/stable app/org.gnome.font-viewer/x86_64/stable app/org.gnome.Showtime/x86_64/stable app/org.altlinux.Tuner/x86_64/stable app/com.github.Matoking.protontricks/x86_64/stable runtime/com.obsproject.Studio.Plugin.OBSVkCapture/x86_64/stable runtime/com.obsproject.Studio.Plugin.Gstreamer/x86_64/stable runtime/com.obsproject.Studio.Plugin.GStreamerVaapi/x86_64/stable runtime/org.freedesktop.Platform.VulkanLayer.MangoHud/x86_64/25.08 runtime/org.freedesktop.Platform.VulkanLayer.vkBasalt/x86_64/25.08 runtime/org.freedesktop.Platform.VulkanLayer.OBSVkCapture/x86_64/25.08

# removing waydroid
xargs -r waydroid session stop
xargs -r waydroid container stop
dnf5 remove -y waydroid
rm -rf /var/lib/waydroid /home/.waydroid ~/waydroid ~/.share/waydroid ~/.local/share/applications/*aydroid* ~/.local/share/waydroid 

# setup scripts using ujust
xargs -r ujust setup-sunshine
xargs -r ujust setup-decky

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

# systemctl enable podman.socket
