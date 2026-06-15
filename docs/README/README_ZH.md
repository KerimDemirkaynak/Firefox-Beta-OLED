# Firefox Beta OLED  

[English](../../README.md) ∙ [Türkçe](README_TR.md) ∙ [简体中文](README_ZH.md)

[![Arch: arm64-v8a](https://img.shields.io/badge/arch-arm64__v8a-blue.svg)](https://en.wikipedia.org/wiki/AArch64)
[![Arch: armeabi-v7a](https://img.shields.io/badge/arch-armeabi__v7a-green.svg)](https://en.wikipedia.org/wiki/ARM_architecture)
[![Arch: x86_64](https://img.shields.io/badge/arch-x86__64-orange.svg)](https://en.wikipedia.org/wiki/X86-64)

🌐 **[官方网站](https://kerimdemirkaynak.github.io/Firefox-Beta-OLED)**

本项目为 Android 版的 [Mozilla Firefox Beta](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta) 应用了真正的 AMOLED 纯黑夜间模式主题，解决了官方浏览器缺乏原生 OLED 友好（纯黑）夜间模式支持的问题。受 [Ironfox-OLEDDark](https://github.com/ArtikusHG/Ironfox-OLEDDark) 的启发，本仓库提供了一个自动化、始终保持最新的已修补版本的浏览器。

### 功能特点  
- **完全自动化的更新：** 自动从 Mozilla 的官方 FTP 服务器获取最新的 Firefox Beta，并通过 GitHub Actions 每 5 天构建/发布一个新的已修补 APK。
- **多架构支持：** 提供适用于 `arm64-v8a`（大多数现代设备）、`armeabi-v7a`（旧设备）和 `x86_64`（模拟器/平板电脑）的 APK。
- **准备安装（已签名 APK）：** 发布的 APK 在构建过程中会自动签名，这意味着您可以直接下载并安装它们，而无需任何额外的签名步骤。
- **纯黑主题：** 为 AMOLED 屏幕优化的纯黑 (`#000000`) 主题，显著降低电池消耗。
- **护眼舒适：** 提升深夜浏览和低光环境下的视觉舒适度。

### 为什么选择 Firefox Beta？  
虽然 Firefox 的稳定版很棒，但 Firefox Beta 提供了完美的平衡：
- 在面向公众发布之前，抢先体验最新的引擎改进、性能调整和 UI 更新。
- 高度稳定的体验，适合作为日常主力浏览器。
- 与 Mozilla 最新的 Web 标准无缝兼容。

### 安装方法
1. 前往本仓库的 [Releases](../../../releases) 页面。
2. 下载适合您设备架构的 `.apk` 文件（例如 `fenix-oled-<版本号>-arm64-v8a.apk`）。*如果您不确定，对于几乎所有现代智能手机，`arm64-v8a` 是正确的选择。*
3. 在您的 Android 设备上安装 APK（您可能需要在设备设置中启用“允许安装未知来源的应用”）。

---

*注意：请确保下载适合您特定设备的正确 APK 架构，以避免解析或安装错误。*
