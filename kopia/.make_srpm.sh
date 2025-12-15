#!/bin/bash

# Use go 1.25 because of upstream
dnf -y copr enable @go-sig/golang-rawhide

dnf -y install go-vendor-tools go2rpm python3-specfile
spectool -g kopia.spec
go_vendor_archive create ./kopia.spec
fedpkg srpm
