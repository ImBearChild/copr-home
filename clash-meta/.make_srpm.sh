#!/bin/bash

dnf -y install go-vendor-tools go2rpm python3-specfile
spectool -g clash-meta.spec
go_vendor_archive create --config ./go-vendor-tools.toml ./clash-meta.spec
fedpkg srpm
