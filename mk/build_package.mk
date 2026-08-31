########## Copyright C 2026 MIT Emad-ms ##########

# project: yuz-os desktop-base package 
# project git : https://github.com/emad1234-msoudi/yuz-branding-base

# mk/build_assets.mk
# Make module for building project assets and moving them to package source

########## Aggregated (phony) targets ##########

.PHONY: fix_prem build_package clear_package

fix_prem:
	@echo "\n[INFO] Fixing src files & directories permission..."

	@find $(SRC_DIR) -type d -exec chmod 0755 {} +
	@find $(SRC_DIR) -type f -exec chmod 0644 {} +
	@chmod 0755 $(SRC_DIR)/DEBIAN/postinst $(SRC_DIR)/DEBIAN/postrm
	
	@echo "[OK] Permission fixed."

build_package: clear_package fix_prem
	@echo "\n[INFO] Building package..."

	@fakeroot dpkg-deb --build -Zxz -z9 $(SRC_DIR) $(PACKAGE_OUT_FILE)

	@echo "[OK] Package built successfully to : $(PACKAGE_OUT_FILE)"

clear_package:
	@if [ -f $(PACKAGE_OUT_FILE) ] ;\
	then\
		echo "\n[INFO]Cleaning old packege build..." ;\
		rm $(PACKAGE_OUT_FILE) ;\
		echo "[OK] Old build cleaned" ;\
	else\
		echo "\n[WARN] Nothing to clean old package." \
	;fi
	
########## end ##########