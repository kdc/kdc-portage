# Gentoo local ebuilds

#### Gentoo repos.conf file 

/etc/portage/repos.conf/kdc-overlay.conf 
```bash
[kdc-overlay]
location = /usr/local/kdc-portage/
sync-type = git
sync-uri = git@git.segfault.co.za:segfault/kdc-portage.git
auto-sync = Yes
```

#### ssh key for git access

```bash
ssh-keygen -t ed25519 -C git@segfault.co.za -a 100
cat .ssh/id_ed25519.pub 
```
And add to repo on https://git.segfault.co.za/

#### package usage
To be able to use these ebuild, you will need to add them into your packages.keywords file/folder

#### ebuild patches 
patches folder is for /etc/portage/patches/
