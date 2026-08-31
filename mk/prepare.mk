########## Copyright C 2026 MIT Emad-ms ##########

# project: yuz-os desktop-base package 
# project git : https://github.com/emad1234-msoudi/yuz-branding-base

# mk/prepare.mk
# Make module for configuring & set project variables

########## Make codes ##########

#-> check system and make required packages.
.PHONY: prepare_system prepare_dirs

prepare_system :
	@echo "[INFO] Checking system...\n"

#-> check system pakage manger
	@if command -v apt >/dev/null ;\
	then \
		echo "[OK] System is Debian/Ubuntu based." ;\
	else \
		echo "[ERROR] This script just writen for based Debian/Ubuntu linux." && exit 1 ;\
	fi

#-> check to exist "librsvg2-bin" package
	@if dpkg -s $(REQUIRED_PACKAGES) >/dev/null ;\
	then \
		echo "[OK] Required package(s) : $(REQUIRED_PACKAGES) installed." ;\
	else \
		echo "[WARN] Required package(s) : $(REQUIRED_PACKAGES) not installed , installing ..." ;\
		if sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -- $(REQUIRED_PACKAGES) >/dev/null ;\
			then echo "[OK] Required package(s) installed successful ." ;\
			else echo "[ERROR] Failed to install required package(s)" && exit 1 ;\
		fi \
	;fi

	@echo "\n[OK] System checked."

#-> make deployment directories
prepare_dirs :
	@echo "\n[INFO] Creating deployment directories..."

	@mkdir -p $(BUILD_DIR)

	@echo "[OK] Deployment directories created."

########## Aggregated (phony) targets ##########

.PHONY:prepare
prepare: prepare_system prepare_dirs
	@echo "\n[OK] Environment prepared successfully."

########## end ##########
