#!/bin/bash

set -e

# Decompile with Apktool (decode resources + classes)
wget -q https://github.com/iBotPeaches/Apktool/releases/download/v2.11.0/apktool_2.11.0.jar -O apktool.jar
java -jar apktool.jar d fenix.apk -o fenix-patched
rm -rf fenix-patched/META-INF

# Color patching
sed -i 's/<color name="fx_mobile_surface">.*/<color name="fx_mobile_surface">#ff000000<\/color>/g' fenix-patched/res/values-night/colors.xml
sed -i 's/<color name="fx_mobile_background">.*/<color name="fx_mobile_background">#ff000000<\/color>/g' fenix-patched/res/values-night/colors.xml
sed -i 's/<color name="fx_mobile_layer_color_2">.*/<color name="fx_mobile_layer_color_2">@color\/photonDarkGrey90<\/color>/g' fenix-patched/res/values-night/colors.xml

# Smali patching (Klasör numarasından bağımsız olarak dinamik bulma)
find fenix-patched/smali* -name "PhotonColors.smali" -exec sed -i 's/ff2b2a33/ff000000/g' {} +
find fenix-patched/smali* -name "PhotonColors.smali" -exec sed -i 's/ff42414d/ff15141a/g' {} +
find fenix-patched/smali* -name "PhotonColors.smali" -exec sed -i 's/ff52525e/ff15141a/g' {} +

# Recompile the APK
java -jar apktool.jar b fenix-patched -o fenix-patched-unsigned.apk --use-aapt2

# Align and sign the APK
zipalign 4 fenix-patched-unsigned.apk fenix-patched-signed.apk

# Clean up
rm -rf fenix-patched fenix-patched-unsigned.apk
