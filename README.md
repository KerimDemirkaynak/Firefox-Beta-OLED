# Firefox Beta OLED  

[![Arch: arm64-v8a](https://img.shields.io/badge/arch-arm64__v8a-blue.svg)](https://en.wikipedia.org/wiki/AArch64)
[![Arch: armeabi-v7a](https://img.shields.io/badge/arch-armeabi__v7a-green.svg)](https://en.wikipedia.org/wiki/ARM_architecture)
[![Arch: x86_64](https://img.shields.io/badge/arch-x86__64-orange.svg)](https://en.wikipedia.org/wiki/X86-64)

This project applies a true AMOLED dark mode theme to [Mozilla Firefox Beta](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta) for Android, addressing the lack of native OLED-friendly (pitch black) dark mode support in the official browser. Inspired by [Ironfox-OLEDDark](https://github.com/ArtikusHG/Ironfox-OLEDDark), this repository provides an automated, always up-to-date patched version of the browser.

### Features  
- **Fully Automated Updates:** Automatically fetches the latest Firefox Beta from Mozilla's official FTP servers and builds/releases a new patched APK every 5 days via GitHub Actions.
- **Multi-Architecture Support:** Provides APKs for `arm64-v8a` (most modern devices), `armeabi-v7a` (older devices), and `x86_64` (emulators/tablets).
- **Ready to Install (Signed APK):** The released APKs are automatically signed during the build process, meaning you can download and install them directly without any extra signing steps.
- **True Black Theme:** OLED-optimized true dark (`#000000`) theme for significantly reduced battery consumption on AMOLED displays.
- **Eye Comfort:** Enhanced visual comfort for late-night browsing and low-light environments.

### Why Firefox Beta?  
While the stable version of Firefox is great, Firefox Beta offers a perfect balance:
- Early access to the newest engine improvements, performance tweaks, and UI updates before they reach the general public.
- Highly stable experience that is suitable for a daily driver browser.
- Seamless compatibility with Mozilla's latest web standards.

### Installation
1. Go to the [Releases](../../releases) page of this repository.
2. Download the appropriate `.apk` file for your device's architecture (e.g., `fenix-oled-<version>-arm64-v8a.apk`). *If you are unsure, `arm64-v8a` is the correct choice for almost all modern smartphones.*
3. Install the APK on your Android device (you may need to enable "Install from unknown sources" in your device settings).

---

*Note: Please ensure you download the correct APK architecture for your specific device to avoid parsing or installation errors.*
