# Gentoo local ebuilds

#### Gentoo repos.conf file 
/etc/portage/repos.conf/kdc-overlay.conf 
```bash
[kdc-overlay]
location = /usr/local/kdc-portage/
sync-type = git
sync-uri = https://github.com/kdc/portage/
auto-sync = Yes
```

#### package usage
To be able to use these ebuild, you will need to add them into your packages.keywords file/folder

#### ebuild patches 
patches folder is for /etc/portage/patches/
