# Gentoo local ebuilds

## Gentoo repos.conf files 

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

kdc-overlay.conf
```bash
[kdc-overlay]
location = /var/db/repos/kdc-overlay
sync-type = git
sync-uri = git@git.segfault.co.za:kevinc/kdc-portage.git
auto-sync = Yes
sync-depth = 1
```

pentoo-overlay.conf
```bash
[pentoo]
location = /var/db/repos/pentoo
sync-type = git
sync-uri = https://github.com/pentoo/pentoo-overlay.git
auto-sync = Yes
sync-depth = 1
```

steam-overlay.conf
```bash
[steam-overlay]
location = /var/db/repos/steam-overlay
sync-type = git
sync-uri = https://github.com/anyc/steam-overlay
auto-sync = true
```

## ssh key for git access

```bash
ssh-keygen -t ed25519 -C git@segfault.co.za -a 100
cat .ssh/id_ed25519.pub 
```
And add to repo on https://git.segfault.co.za/
