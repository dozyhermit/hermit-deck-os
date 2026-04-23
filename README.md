# hermit-deck-os

Bazzite is great, but they target such a wide user base that I find it to be quite bloated.

So, `hermit-deck-os` is a custom bootc image forked from `bazzite-deck-gnome` which strips out a lot of unnecessary (imo) things.

## Ethos

The target here is me, a desktop user with _some_ Linux experience. And while Bazzite offers a lot of pre-applied things that I have no patience to setup on my own, the rest is far from useful for me.

So, the reasons I have removed something are:

1. I don't use ROMs
2. I don't use a handheld device
3. I only use Steam, I don't use other launchers
4. I connect to this system with software like Steam Link or Moonlight
5. I don't configure or interact with Proton outside of Steam
6. I am familiar enough with Linux that I don't need GUI helpers
7. I do not do any software development on this system

## Removals:

Removals are as follows:

1. `waydroid`
2. Numerous flatpaks including: `ProtonTricks`, `ProtonPlus` and many Gnome applications
3. `lutris`
4. `hhd`
5. `rom-properties`
6. GUI applications like: `bbrew`, `btrfs-assistant`, `hhd-ui`

## Setups:

Automated `ujust` setups:

1. Sunshine
2. Decky

## Installation

Download the ISO.

If you're already running Bazzite/Universal Blue, run: `sudo bootc switch ghcr.io/dozyhermit/hermit-deck-os`
