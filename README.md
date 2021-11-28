# Personal Overlay for Gentoo

Not allot of testing, just allot of version bumping :D

## repos.conf files I use

### Gentoo

gentoo.conf
```bash
[DEFAULT]
main-repo = gentoo

[gentoo]
location = /var/db/repos/gentoo
sync-type = git
sync-uri = https://github.com/gentoo-mirror/gentoo
auto-sync = yes
sync-depth = 1
sync-rsync-verify-jobs = 1
sync-rsync-verify-metamanifest = yes
sync-rsync-verify-max-age = 24
sync-openpgp-key-path = /usr/share/openpgp-keys/gentoo-release.asc
sync-openpgp-key-refresh-retry-count = 40
sync-openpgp-key-refresh-retry-overall-timeout = 1200
sync-openpgp-key-refresh-retry-delay-exp-base = 2
sync-openpgp-key-refresh-retry-delay-max = 60
sync-openpgp-key-refresh-retry-delay-mult = 4
```
### Personal overlay

kdc-overlay.conf
```bash
[kdc-overlay]
location = /var/db/repos/kdc-overlay
sync-type = git
sync-uri = https://github.com/kdc/kdc-portage.git
auto-sync = Yes
sync-depth = 1
```

### Pentoo Linux's Security overlay

pentoo-overlay.conf
```bash
[pentoo]
location = /var/db/repos/pentoo
sync-type = git
sync-uri = https://github.com/pentoo/pentoo-overlay.git
auto-sync = Yes
sync-depth = 1
```

### Gentoo's Steam overlay

steam-overlay.conf
```bash
[steam-overlay]

# Gentoo overlay for Valve's Steam client and Steam-based games.
# Maintainer: anyc (https://github.com/anyc)
# https://raw.githubusercontent.com/anyc/steam-overlay/master/steam-overlay.conf

location = /usr/local/portage/steam-overlay
sync-type = git
sync-uri = https://github.com/anyc/steam-overlay.git
priority = 50
auto-sync = Yes
```

### Sultan's Overlay

stha09-overlay.conf
```bash
[stha09]
location = /var/db/repos/stha09-overlay
sync-type = git
sync-uri = https://github.com/stha09/gpo-stha09.git
auto-sync = Yes
sync-depth = 1
```

### torbrowser-overlay

torbrowser-overlay.conf
```bash
[torbrowser-overlay]
location = /var/db/repos/torbrowser-overlay
sync-type = git
sync-uri = https://0xacab.org/poncho/torbrowser-overlay.git
auto-sync = Yes
sync-depth = 1
```

## SSHKey for private Repo Access

```bash
ssh-keygen -t ed25519 -C portage@$(hostname -f) -a 100
cat .ssh/id_ed25519.pub
```
