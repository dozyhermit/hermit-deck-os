# hermit-deck-os

<img src="./logo.png" height="250px" width="auto" alt="https://www.flaticon.com/authors/ains"/>

Bazzite is great, but they target such a wide user base that I find it to be quite bloated.

So `hermit-deck-os` is a custom `bazzite-deck-gnome` bootc image designed to strip unnecessary (imo) bloat.

## Ethos

Minification, simplification. Bazzite does a lot of things right, but also includes a lot of things like:

1. ROM emulators
2. Handheld support
3. Game launchers
4. Proton toolsets
5. GUIs for things like `brew` or `btrfs`
6. GNOME desktop environment applets and extensions
7. Waydroid emulation

... which I don't use and haven't for a very long time.

So, `hermit-deck-os` aims to focus on:

1. Steam, for playing games and managing `Proton`
2. Steam and `decky` for hardware monitoring
3. Steam Link and `sunshine`/`moonlight` for remote access

That's it.

## Changes:

### Removals

The removals are as follows:

1. `waydroid`
2. `lutris`
3. `hhd`
4. `rom-properties`
5. Flatpaks: `ProtonTricks`, `ProtonPlus` and the many Gnome applets
6. GUI application helpers for: `brew`, `btrfs-assistant`, `hhd-ui` and `firewall-config`
7. GNOME extensions and the extension manager

### ujust

_Reference: https://docs.bazzite.gg/Installing_and_Managing_Software/ujust/_

The following `ujust` commands are run:

1. `setup-sunshine`
2. `setup-decky`

## Installation

Download `bazzite-deck-gnome` and install it: https://bazzite.gg.

Open a terminal and execute: `sudo bootc switch ghcr.io/dozyhermit/hermit-deck-os`.

Done!
