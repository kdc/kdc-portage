# Gentoo local ebuilds

#### package usage
To be able to use these ebuild, you will need to add them into your keywords file :
```bash
/etc/portage/package.keywords/general :
...
x11-wm/dwm **
net-misc/mac-telnet **
...
```

##### /etc/portage/make.conf
```bash
PORTDIR_OVERLAY="/usr/local/portage"
```

##### /usr/local/portage/metadata/layout.conf
And first time use you need : /usr/local/portage/metadata/layout.conf

```bash
echo "masters = gentoo" > /usr/local/portage/metadata/layout.conf
```

#### Ebuild Manifest / Digest
When using one of the ebuilds you need to create a manifest with :

```bash
ebuild /usr/local/portage/category/package-name/.ebuild digest
```
#### patches 
folder is for /etc/portage/patches/
