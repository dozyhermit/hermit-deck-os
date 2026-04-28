# hermit-deck-os

<img src="./logo.png" height="150px" width="auto" alt="https://www.flaticon.com/authors/ains"/>

Bazzite is great, but it targets such a wide user base that I find it to be quite bloated.

So `hermit-deck-os` is just a custom `bazzite-deck-gnome` bootc image designed to strip unnecessary (imo) bloat.

## Ethos

Minification, simplification. `hermit-deck-os` focuses on:

1. Steam, for playing games and managing `Proton`
2. Steam and `decky` for hardware monitoring
3. Steam Link and `sunshine`/`moonlight` for remote access

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
9. Removing GUI application helpers for things like: `brew`, `btrfs` and `hhd`
10. Removing GNOME extensions and the extension manager

### ujust

_Reference: https://docs.bazzite.gg/Installing_and_Managing_Software/ujust/_

The following `ujust` commands are run:

1. `setup-sunshine`
2. `setup-decky`
3. `clean-system`

## Installation

Download `bazzite-deck-gnome` and install it: https://bazzite.gg

Open a terminal, execute: `sudo bootc switch ghcr.io/dozyhermit/hermit-deck-os`

Done!
