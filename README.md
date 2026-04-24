# hermit-deck-os

<img src="./logo.png" height="250px" width="auto" alt="https://www.flaticon.com/authors/ains"/>

Bazzite is great, but they target such a wide user base that I find it to be quite bloated.

So `hermit-deck-os` is a custom `bazzite-deck-gnome` bootc image designed to strip unnecessary (imo) bloat.

## Ethos

Minification, simplification. Bazzite does a lot of things right, but also includes a lot of:

1. ROM emulators
2. Handheld device supports
3. Game launchers
4. Proton toolsets
5. GUIs for things like `brew` or `btrfs`
6. GNOME desktop environment applets and extensions
7. Android emulation
8. Virtualisation and container management

... which I feel the average user _likely_ does not use.

So, `hermit-deck-os` aims to focus on:

1. Steam, for playing games and managing `Proton`
2. Steam and `decky` for hardware monitoring
3. Steam Link and `sunshine`/`moonlight` for remote access

That's it.

## Changes:

### Applications

The application changes are as follows:

1. Removing `waydroid`
2. Removing `lutris`
3. Removing `hhd`
4. Removing `rom-properties`
5. Removing `distrobox`
6. Removing `tailscale`
7. Removing `webapp-manager`
8. Removing flatpaks: `ProtonTricks`, `ProtonPlus` and the many GNOME applets
9. Removing GUI application helpers for things like: `brew`, `btrfs`, `hhd` and the firewall
10. Removing GNOME extensions and the extension manager

### ujust

_Reference: https://docs.bazzite.gg/Installing_and_Managing_Software/ujust/_

The following `ujust` commands are run:

1. `setup-sunshine`
2. `setup-decky`

## Installation

Download `bazzite-deck-gnome` and install it: https://bazzite.gg.

Open a terminal and execute: `sudo bootc switch ghcr.io/dozyhermit/hermit-deck-os`.

Done!
