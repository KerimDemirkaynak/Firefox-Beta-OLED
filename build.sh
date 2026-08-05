#!/bin/bash
set -e

# Decompile with Apktool (decode resources + classes)
wget -q https://github.com/iBotPeaches/Apktool/releases/download/v2.11.0/apktool_2.11.0.jar -O apktool.jar
java -jar apktool.jar d fenix.apk -o fenix-patched
rm -rf fenix-patched/META-INF

# ---- Color patching ----

# Legacy XML views (toolbar/webview chrome)
COLORS=fenix-patched/res/values-night/colors.xml
if [ -f "$COLORS" ]; then
  sed -i 's/<color name="fx_mobile_surface">.*/<color name="fx_mobile_surface">#ff000000<\/color>/g' "$COLORS"
  sed -i 's/<color name="fx_mobile_background">.*/<color name="fx_mobile_background">#ff000000<\/color>/g' "$COLORS"
  sed -i 's/<color name="fx_mobile_layer_color_2">.*/<color name="fx_mobile_layer_color_2">@color\/photonDarkGrey90<\/color>/g' "$COLORS"
  echo "[OLED] values-night/colors.xml patched"
fi

# PhotonColors.smali (Klasör numarasından bağımsız olarak dinamik bulma)
find fenix-patched/smali* -name "PhotonColors.smali" -exec sed -i 's/ff2b2a33/ff000000/g' {} +
find fenix-patched/smali* -name "PhotonColors.smali" -exec sed -i 's/ff42414d/ff15141a/g' {} +
find fenix-patched/smali* -name "PhotonColors.smali" -exec sed -i 's/ff52525e/ff15141a/g' {} +
echo "[OLED] PhotonColors patched"

# NovaColors.smali: new dark surfaces (Gray65/70/75/80/85) -> black
NC=$(find fenix-patched -path '*/mozilla/components/ui/colors/NovaColors.smali' | head -n1)
if [ -n "$NC" ]; then
  sed -i 's/ff312f33/ff000000/g; s/ff252428/ff000000/g; s/ff1d1b1f/ff000000/g; s/ff171519/ff000000/g; s/ff131215/ff000000/g' "$NC"
  echo "[OLED] NovaColors dark surfaces -> black"
fi

# M3 dark defaults: Background/Surface/SurfaceDim (PaletteTokens.Neutral6) -> black
CDT=$(find fenix-patched -path '*/androidx/compose/material3/tokens/ColorDarkTokens.smali' | head -n1)
if [ -n "$CDT" ]; then
  sed -i 's#sget-wide v0, Landroidx/compose/material3/tokens/PaletteTokens;->Neutral6:J#const-wide v0, 0xff000000L#' "$CDT"
  echo "[OLED] ColorDarkTokens patched (M3 background/surface)"
fi

# GeckoView loading/cover background (#2A2A2E -> black)
find fenix-patched -path '*/org/mozilla/geckoview/GeckoView.smali' -exec sed -i 's/-0xd5d5d2/-0x1000000/g' {} +
find fenix-patched -path '*/mozilla/components/browser/engine/gecko/GeckoEngineView.smali' -exec sed -i 's/-0xd5d5d2/-0x1000000/g' {} +
echo "[OLED] GeckoView loading background -> black"

# Recompile the APK
java -jar apktool.jar b fenix-patched -o fenix-patched-unsigned.apk --use-aapt2

# Align the APK (signing happens in the workflow with the release keystore)
zipalign -f 4 fenix-patched-unsigned.apk fenix-patched-signed.apk

# Clean up
rm -rf fenix-patched fenix-patched-unsigned.apk apktool.jar
