########## Copyright C 2026 MIT Emad-ms ##########

# project: yuz-os desktop-base package 
# project git : https://github.com/emad1234-msoudi/yuz-branding-base

# Makefile
# make file for load mk api and genrate yuz-os desktop base package. 

########## Load mk modules ##########
include mk/config.mk
include mk/prepare.mk
include mk/build_package.mk

########## Global Settings ##########
.DEFAULT_GOAL := help

########## Make rules ##########

.PHONY: build all clean help

#-> Build project
build: prepare build_package
	
	@echo "\n[SUCCESS] Project build completed."

all: build

#-> Clean build
# clear_assets is already defined in build_assets.mk
clear: clear_package
	@echo "\n[INFO] Cleaning main build directory: $(BUILD_DIR)"
	@rm -rf -- $(BUILD_DIR)
	@echo "[OK] Build directory cleaned."
	@echo "\n[SUCCESS] Environment is now clean."

#-> Help system
help:
	@echo "=============================================================="
	@echo "               Yuz-OS Branding Base Build System			     "
	@echo "=============================================================="
	@echo "|Usage: make [target]"
	@echo
	@echo "|Main Targets:"
	@echo "  all | build    : Prepare system and build all assets"
	@echo "  clear          : Remove all generated files and directories"
	@echo
	@echo "|Sub Targets:"
	@echo "  prepare        : Check dependencies and create base dirs"
	@echo
	@echo "	 build_package	: Generate deb package from src dir"
	@echo
	@echo "  clear_package	: Clear all generated deb packages"
	@echo
	@echo "  help           : Show this help message and exit"
	@echo "=============================================================="

########## end ##########
