# Xiaomi Ares Device Tree

This repository contains the device tree for the Xiaomi Ares device, tailored for LineageOS/AOSP-based custom ROM builds.

### Initialize and Update Submodules

After cloning, initialize and update all git submodules recursively:

```bash
git submodule update --init --recursive
```

This command will:
- Initialize any submodules defined in `.gitmodules`
- Clone all submodule repositories
- Recursively update any nested submodules

To update submodules to their latest committed state:

```bash
git submodule update --recursive
```

## Directory Structure

```
.
├── Android.bp              # Blueprint build configuration
├── AndroidProducts.mk      # Product definitions
├── BoardConfig.mk          # Board-specific build configurations
├── device.mk               # Device-specific makefile
├── lineage_ares.mk         # LineageOS-specific product definition
├── vendor.prop             # Vendor properties
│
├── configs/                # Device configuration files
│   └── display_id_0.xml
│
├── init/                   # Init scripts and systemd configurations
│   ├── Android.bp
│   ├── init.ares.rc
│   └── init.project.rc
│
├── overlay/                # Framework overlays
│   ├── FrameworksResOverlayAres/
│   └── SystemUIOverlayAres/
│
├── overlay-lineage/        # LineageOS-specific overlays
│   └── LineageSDKOverlayAres/
│
├── sku/                    # SKU-specific build properties
│   ├── ares.build.prop
│   └── aresin.build.prop
│
└── XiaomiParts/            # Custom Xiaomi system application
    ├── Android.bp
    ├── AndroidManifest.xml
    ├── res/                # Resources (layouts, drawables, etc.)
    ├── src/                # Source code
    │   └── org/aospextended/device/
    │       ├── BootReceiver.java
    │       ├── KeyHandler.java
    │       ├── XiaomiParts.java
    │       ├── gamekey/
    │       ├── gestures/
    │       ├── led/
    │       ├── triggers/
    │       ├── util/
    │       └── vibration/
    └── sepolicy/           # SELinux policies
```

### XiaomiParts Application
A system application that provides device-specific features:
- **Gestures**: Custom touch gesture support
- **Gamekey**: Enhanced gaming trigger mappings
- **LED**: Notification LED customization
- **Triggers**: Custom trigger configuration for performance modes
- **Vibration**: Haptic feedback customization