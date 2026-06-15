# Firefox Beta OLED  

[English](../../README.md) ∙ [Türkçe](README_TR.md) ∙ [简体中文](README_ZH.md)

[![Arch: arm64-v8a](https://img.shields.io/badge/arch-arm64__v8a-blue.svg)](https://en.wikipedia.org/wiki/AArch64)
[![Arch: armeabi-v7a](https://img.shields.io/badge/arch-armeabi__v7a-green.svg)](https://en.wikipedia.org/wiki/ARM_architecture)
[![Arch: x86_64](https://img.shields.io/badge/arch-x86__64-orange.svg)](https://en.wikipedia.org/wiki/X86-64)

🌐 **[Resmi Web Sitesi](https://kerimdemirkaynak.github.io/Firefox-Beta-OLED)**

Bu proje, resmi tarayıcıdaki yerleşik OLED uyumlu (tam siyah) karanlık mod desteği eksikliğini gidermek amacıyla Android için [Mozilla Firefox Beta](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta) sürümüne gerçek AMOLED karanlık mod teması uygular. [Ironfox-OLEDDark](https://github.com/ArtikusHG/Ironfox-OLEDDark) projesinden ilham alan bu depo, tarayıcının otomatikleştirilmiş ve her zaman güncel tutulan yamalı bir sürümünü sunar.

### Özellikler  
- **Tam Otomatik Güncellemeler:** Mozilla'nın resmi FTP sunucularından en son Firefox Beta sürümünü otomatik olarak çeker ve GitHub Actions aracılığıyla her 5 günde bir yeni yamalı APK derleyip yayımlar.
- **Çoklu Mimari Desteği:** `arm64-v8a` (çoğu modern cihaz), `armeabi-v7a` (eski cihazlar) ve `x86_64` (emülatörler/tabletler) için özel olarak derlenmiş APK'lar sunar.
- **Kuruluma Hazır (İmzalı APK):** Yayımlanan APK'lar derleme işlemi sırasında otomatik olarak imzalanır, yani herhangi bir ekstra imzalama adımına gerek kalmadan doğrudan indirip kurabilirsiniz.
- **Gerçek Siyah Tema:** AMOLED ekranlarda pil tüketimini önemli ölçüde azaltan OLED optimize edilmiş gerçek siyah (`#000000`) tema.
- **Göz Rahatlığı:** Gece geç saatlerde gezinme ve düşük ışıklı ortamlar için artırılmış görsel konfor.

### Neden Firefox Beta?  
Firefox'un kararlı (stable) sürümü harika olsa da, Firefox Beta mükemmel bir denge sunar:
- Genel kullanıma sunulmadan önce en yeni motor iyileştirmelerine, performans ayarlarına ve kullanıcı arayüzü güncellemelerine erken erişim.
- Günlük kullanım için uygun, oldukça kararlı bir deneyim.
- Mozilla'nın en son web standartlarıyla kusursuz uyumluluk.

### Kurulum
1. Bu deponun [Releases](https://github.com/KerimDemirkaynak/Firefox-Beta-OLED/releases) (Sürümler) sayfasına gidin.
2. Cihazınızın mimarisine uygun olan `.apk` dosyasını indirin (örn. `fenix-oled-<sürüm>-arm64-v8a.apk`). *Eğer emin değilseniz, neredeyse tüm modern akıllı telefonlar için doğru seçim `arm64-v8a`'dır.*
3. APK'yı Android cihazınıza kurun (cihaz ayarlarınızdan "Bilinmeyen kaynaklardan yükle" seçeneğini etkinleştirmeniz gerekebilir).

---

*Not: Ayrıştırma (parsing) veya yükleme hatalarından kaçınmak için lütfen cihazınıza özel doğru APK mimarisini indirdiğinizden emin olun.*
