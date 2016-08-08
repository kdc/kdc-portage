# Gentoo local ebuilds
----------------
PORTDIR_OVERLAY="/usr/local/portage"
----------------
And first time use you need : /usr/local/portage/metadata/layout.conf

echo "masters = gentoo" > /usr/local/portage/metadata/layout.conf
----------------
When using one of the ebuilds you need to create a manifest with :

ebuild /usr/local/portage/category/package-name/.ebuild digest
----------------
