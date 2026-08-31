########## Copyright C 2026 MIT Emad-ms ##########

# project: yuz-os desktop-base package 
# project git : https://github.com/emad1234-msoudi/yuz-branding-base

# mk/config.mk
# Make module for configuring & set project variables

########## project variables ##########

#-> project tree directories 

BUILD_DIR := build

SRC_DIR := src
ASSETS_DIR := assets

#-> project prepare variables

REQUIRED_PACKAGES := dpkg-dev fakeroot lintian gzip

########## Packaging variables ##########

PACKAGE_VERSION := 1.0.0
PACKAGE_NAME := yuz-branding-calamares
PACKAGE_FULL_NAME := $(PACKAGE_NAME)_$(PACKAGE_VERSION)

PACKAGE_OUT_FILE := $(BUILD_DIR)/$(PACKAGE_FULL_NAME).deb

########## end ##########
