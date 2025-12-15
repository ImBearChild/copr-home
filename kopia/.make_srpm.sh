#!/bin/bash

#dnf5 install 'dnf5-command(copr)'
# Use go 1.25 because of upstream
#dnf -y copr enable @go-sig/golang-rawhide
#ls /etc/yum.repos.d/
#dnf repolist
dnf -y --repofrompath='golang,https://download.copr.fedorainfracloud.org/results/@go-sig/golang-rawhide/fedora-$releasever-$basearch/' install golang
dnf -y install go-vendor-tools go2rpm python3-specfile
spectool -g kopia.spec
go_vendor_archive create ./kopia.spec
fedpkg srpm
