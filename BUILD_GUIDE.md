# 🔧 Build & Distribution Guide

## ✅ Fixed: Internet Permission Issue

### Problem

The app was working on emulator but failing on physical devices with "No internet connection" error.

### Solution

Added required Android permissions to `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

---

## 📦 Building Release APK

### Method 1: Standard Build

```bash
flutter build apk --release
```

### Method 2: If Build Crashes (JVM issues)

```bash
flutter build apk --release --no-tree-shake-icons
```

### Method 3: Split APK by Architecture (Smaller files)

```bash
flutter build apk --release --split-per-abi
```

This creates separate APKs for different CPU architectures:

- `app-armeabi-v7a-release.apk` (older 32-bit devices)
- `app-arm64-v8a-release.apk` (modern 64-bit devices) ⭐ Most common
- `app-x86_64-release.apk` (for emulators/tablets)

---

## 📍 APK Location

After building, find your APK here:

```
build/app/outputs/flutter-apk/app-release.apk
```

Or for split builds:

```
build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk
build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
build/app/outputs/flutter-apk/app-x86_64-release.apk
```

---

## 📲 Testing on Physical Device

### Via USB (ADB)

```bash
flutter install --release
```

### Via File Transfer

1. Copy `app-release.apk` to phone
2. Enable "Install from Unknown Sources" in Settings
3. Open APK file and install

---

## 🚀 Distribution

### Share APK Directly

- Upload to Google Drive / Dropbox
- Send via WhatsApp / Telegram
- Use file sharing services

**Recommended**: Use `app-arm64-v8a-release.apk` (works on 90%+ modern devices)

### Upload to Google Play Store

1. Create App Bundle:

```bash
flutter build appbundle --release
```

2. Find bundle at: `build/app/outputs/bundle/release/app-release.aab`

3. Upload to Play Console

---

## 🔍 Troubleshooting

### Issue: "App not installed" on device

**Solutions:**

- Uninstall old version first
- Check if device architecture matches APK
- Enable "Install from Unknown Sources"
- Use universal APK: `flutter build apk --release`

### Issue: Network errors on physical device

**Solution**: ✅ Already fixed! Permissions added to manifest.

### Issue: Build crashes / Gradle daemon error

**Solutions:**

- Use `--no-tree-shake-icons` flag
- Increase Gradle memory in `android/gradle.properties`:
  ```properties
  org.gradle.jvmargs=-Xmx4096M
  ```
- Restart computer to free memory
- Close Android Studio before building

### Issue: APK size too large

**Solutions:**

- Use split APKs: `--split-per-abi`
- Enable ProGuard (already enabled in release builds)
- Remove unused resources

---

## 📊 APK Size Comparison

| Build Type    | Size   | Best For              |
| ------------- | ------ | --------------------- |
| Universal APK | ~49 MB | Easiest distribution  |
| arm64-v8a     | ~25 MB | Modern phones (2018+) |
| armeabi-v7a   | ~23 MB | Older phones          |
| x86_64        | ~26 MB | Tablets/Emulators     |

---

## ✅ Checklist Before Distribution

- [ ] Test on physical device (not just emulator)
- [ ] Test with slow/no internet connection
- [ ] Verify all API calls work
- [ ] Test favorites functionality
- [ ] Check splash screen displays correctly
- [ ] Verify navigation works properly
- [ ] Test search and refresh buttons
- [ ] Check error handling

---

## 🎯 Quick Commands Reference

```bash
# Clean build
flutter clean

# Get dependencies
flutter pub get

# Build release APK (universal)
flutter build apk --release

# Build split APKs (recommended)
flutter build apk --release --split-per-abi

# Install on connected device
flutter install --release

# Check APK size
flutter build apk --analyze-size

# Build for Play Store
flutter build appbundle --release
```

---

## 📱 Supported Devices

- **Android**: 5.0 (API 21) and above
- **Architectures**: ARM 32-bit, ARM 64-bit, x86 64-bit
- **Recommended**: Android 8.0+ (API 26+) for best experience

---

## 🔐 Signing APK (Optional)

For Google Play Store, you need to sign your APK:

1. Create keystore:

```bash
keytool -genkey -v -keystore ~/crypto-wallet-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias crypto-wallet
```

2. Create `android/key.properties`:

```properties
storePassword=<password>
keyPassword=<password>
keyAlias=crypto-wallet
storeFile=<path-to-keystore>
```

3. Build signed APK:

```bash
flutter build apk --release
```

---

Made with ❤️ for HNG12 Task 4
