Remember Firebase automatically mirrors your firebase project into Google Cloud. You need to get in there and manage domains with their callbacks, and also enable things like People API. Console will reveal it all anyway.

Flutter version used is 3.7.12 because right now I can't update my macOS version (BigSur 11.7) and that's as far as Xcode 13.2.1 goes.

```
± flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.7.12, on macOS 11.7.10 20G1427 darwin-x64, locale en)
[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.2) 
[✓] Xcode - develop for iOS and macOS (Xcode 13.2.1) 
[✓] Chrome - develop for the web 
[!] Android Studio (not installed) 
[✓] IntelliJ IDEA Community Edition (version 2023.1.3) 
[✓] VS Code (version 1.91.0) 
[✓] VS Code (version 1.91.1) 
[✓] Connected device (2 available) 
[✓] HTTP Host Availability 
```
