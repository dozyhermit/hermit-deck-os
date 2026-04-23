# hermit-deck-os

![image description](./logo.png)

_source: https://www.flaticon.com/authors/ains_

Bazzite is great, but they target such a wide user base that I find it to be quite bloated.

`hermit-deck-os` is a custom `bazzite-deck-gnome` bootc image designed to strip unnecessary (imo) bloat.

## Ethos

Minification, simplification. Bazzite does a lot of things right, but also includes a lot of things like:

1. ROM emulations
2. Handheld device support
3. Game launchers
4. Proton tweaking toolsets
5. GUI helpers for things like `brew`, `Proton` or `btrfs`
6. Gnome desktop environment applets and extensions
7. Android emulation with Waydroid

... which I don't use and haven't for a very long time.

So, `hermit-deck-os` aims to focus on:

1. Steam, for playing games and managing `Proton`
2. Steam and `decky` for hardware monitoring
3. Steam Link and `sunshine`/`moonlight` for remote access

That's it.

## Changes:

### Applications

The applications removed are:

1. `waydroid`
2. `lutris`
3. `hhd`
4. `rom-properties`
5. Numerous flatpaks like: `ProtonTricks`, `ProtonPlus` and the many Gnome applets
6. GUI applications like: `bbrew`, `btrfs-assistant`, `hhd-ui` and `firewall-config`

### ujust

_Reference: https://docs.bazzite.gg/Installing_and_Managing_Software/ujust/_

The following `ujust` commands are run by default:

1. `setup-sunshine`
2. `setup-decky`

## Installation

Download `bazzite-deck-gnome` and install it: https://bazzite.gg.

Open a terminal and execute: `sudo bootc switch ghcr.io/dozyhermit/hermit-deck-os`.

Done!
