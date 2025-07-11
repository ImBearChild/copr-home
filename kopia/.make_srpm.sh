#!/bin/bash

dnf -y install go-vendor-tools go2rpm python3-specfile
spectool -g kopia.spec
go_vendor_archive create ./kopia.spec
fedpkg srpm
