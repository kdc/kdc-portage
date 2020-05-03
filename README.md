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

#### Package list

```
app-admin/1password-cli
app-admin/govmomi
app-admin/linode-cli
app-admin/terraform
app-admin/terraform-inventory
app-editors/atom-bin
app-editors/typora
app-editors/vscodium-bin
app-misc/tty-clock
app-text/pandoc-bin
dev-python/canarytools
dev-python/jsonlines
dev-python/linode_api4
dev-python/cloudflare
dev-python/shodan
net-analyzer/cdpr
net-analyzer/nessus-bin
net-misc/mac-telnet
net-nds/ApacheDirectoryStudio
sys-cluster/minishift
sys-cluster/openshift-client-tools
```
