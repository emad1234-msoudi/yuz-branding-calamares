<p align="center">
  <img src="./image/emblem-yuz-logo.png" alt="Yuz-os Project header" width="30%">
</p>

<p align="center"> 🐆 Yuz-OS Edu branding-calamares

<p align="center">🎓 Free • Fast • Open Source Educational Platform

<p align="center">Providing a consistent and professional visual identity for the Yuz-OS live installer.

---

## 📝 Description

`yuz-branding-calamares` is the installer branding package for the **Yuz-OS** project. It provides the visual branding descriptors, Nord-themed QML slideshow presentation, logos, and configuration integrations required to deliver a polished Calamares installation experience.

Designed with a focus on **Debian stability** and **modular packaging architecture**, this package integrates seamlessly with `calamares-settings-debian`. It ensures that the Yuz-OS installer identity and desktop launcher are deployed reliably on live systems while remaining fully compliant with strict packaging standards (DEP-5 / Lintian).

**Key features:**
- 🎨 Minimalist Nord/Colloid Dark QML slideshow presentation with typography-focused slides.
- ⚙️ Modular branding descriptor located at `/etc/calamares/branding/yuz`.
- 🛠️ Safe post-install and post-removal scripts handling live launcher customization and Calamares settings switching.
- 🛡️ Lintian-clean Debian packaging with DEP-5 compliant copyright metadata.

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the necessary build tools installed. Since this is a Debian-oriented package, you will need:
- `make`
- `dpkg-dev`
- `fakeroot`
- `gzip`
- `lintian` (for verification)

>[!NOTE]
>Required packages to build are automatically checked by the Makefile.

### Installation & Usage

You can clone the repository and build the `.deb` package directly:

```bash
# Clone the repository
git clone https://github.com/emad-ms/yuz-branding-calamares.git

# Enter the directory
cd yuz-branding-calamares

# Build the package
make build
```

### Build System (Makefile)

The project uses a structured `Makefile` to manage package generation and environment validation. Use the `help` target to see all available commands:

```bash
make help
```

and help about Makefile :

```help
==============================================================
            Yuz-OS Branding Calamares Build System			     
==============================================================
|Usage: make [target]

|Main Targets:
  all | build    : Prepare system and build all assets
  clear          : Remove all generated files and directories

|Sub Targets:
  prepare        : Check dependencies and create base dirs

	 build_package	: Generate deb package from src dir

  clear_package	: Clear all generated deb packages

  help           : Show this help message and exit
==============================================================
```

---

## 🗺 Roadmap

The project continues to evolve toward a polished, robust educational platform.

**Planned improvements include:**

- [x] Initial packaging and Calamares branding integration
- [x] Modular QML slideshow presentation with Nord theme
- [x] Safe `postinst` and `postrm` scripts for live launcher and configuration activation
- [x] Full Lintian compliance and conffiles validation
- [ ] Multi-resolution slide responsiveness testing on live media
- [ ] Automated CI pipeline for deb packaging and Lintian verification

---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contribution you make is greatly appreciated.

**You can contribute by:**
- reporting bugs;
- suggesting improvements;
- improving documentation;
- testing installer media on different hardware;
- submitting pull requests.

---

## 👨‍💻 Author

**Emad Masoudi**

*Student Developer & OS Enthusiast*

Creator of [Yuz-OS Edu](https://github.com/emad-ms/yuz-os-edu)

---

## ❤️ Acknowledgements

**Special thanks to the communities and projects that inspire this work:**

- [Debian Project](https://www.debian.org/)
- [Calamares Project](https://calamares.io/)
- [calamares-settings-debian Team](https://salsa.debian.org/live-team/calamares-settings-debian)
- [GNU Project](https://www.gnu.org/)
- All Free and Open Source Software contributors.

Without their incredible work, building modern, accessible, and stable operating systems would not be possible.

---

## 📄 License

This project is licensed under the **MIT License**:

- **Package & Visual Assets:** [MIT License](/LICENSE) © 2026 Emad Masoudi

**See the LICENSE file for full legal details.**

---

<p align="center"><img src="./image/emblem-yuz-symbolic_frame.png" alt="Yuz-os Project logo" width="130">

<p align="center">Free • Fast • Open Source Educational Platform

<p align="center">Helping schools build modern digital classrooms using Debian and Free Software.

<p align="center">Education should be accessible, modern, and open to everyone.
