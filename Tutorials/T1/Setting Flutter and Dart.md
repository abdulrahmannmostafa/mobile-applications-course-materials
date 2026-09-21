# Flutter + Android Setup
# 1. Install Flutter

Download the Flutter SDK from:

[https://docs.flutter.dev/install](https://docs.flutter.dev/install)

Extract Flutter somewhere such as:

```text
C:\src\flutter
```

Add Flutter's `bin` folder to your Windows **PATH**:

```text
C:\src\flutter\bin
```

Open a **new PowerShell / VS Code terminal** and verify:

```powershell
flutter --version
```

Then:

```powershell
flutter doctor
```

---

# 2. Install Java JDK

Flutter's Android build process requires Java so you need to install it

Install a supported JDK
`Get a LTS version :)`

After installation, verify:

```powershell
java -version
```

If Java is installed but Flutter cannot find it, check:

```powershell
flutter doctor -v
```

---

# 3. Create the Android SDK Folder

Create:

```text
C:\Android\Sdk
```

You can create it from PowerShell:

```powershell
New-Item -ItemType Directory -Force "C:\Android\Sdk"
```

---

# 4. Download Android Command-Line Tools

Download **Command-line tools only** from the official Android developer website:

[https://developer.android.com/studio](https://developer.android.com/studio)

Look for:

**Command line tools only**

Download the **Windows** version

You will receive a ZIP file similar to:

```text
commandlinetools-win-xxxx_latest.zip
```

```text
I recommend not to deal with the emulator or downloading Android Studio totally as
it will drain your memory and make you way slow, just download the command line tools and go on
```

---

# 5. Extract the Command-Line Tools Correctly

This step is important

Inside:

```text
C:\Android\Sdk
```

create:

```text
cmdline-tools
```

Then create:

```text
latest
```

The final structure must be:

```text
C:\Android\Sdk
└── cmdline-tools
    └── latest
        ├── bin
        ├── lib
        ├── NOTICE.txt
        └── source.properties
```

Most importantly this file must exist:

```text
C:\Android\Sdk\cmdline-tools\latest\bin\sdkmanager.bat
```

---

# 6. Configure Android SDK Environment Variables

Open Windows:

**Environment Variables**

Add:

### ANDROID_HOME

```text
C:\Android\Sdk
```

Add the following folders to **Path**:

```text
C:\Android\Sdk\cmdline-tools\latest\bin
C:\Android\Sdk\platform-tools
```

After changing PATH, **close and reopen VS Code / PowerShell**

---

# 7. Check sdkmanager

Open a new PowerShell terminal and run:

```powershell
sdkmanager --version
```

If `sdkmanager` is recognized, the command-line tools are configured correctly

You can also run it directly:

```powershell
& "C:\Android\Sdk\cmdline-tools\latest\bin\sdkmanager.bat" --version
```

---

# 8. Install Android SDK Components

Install the Android SDK Platform:

```powershell
sdkmanager "platforms;android-36"
```

Install Android Platform Tools:

```powershell
sdkmanager "platform-tools"
```

Install Android Build Tools:

```powershell
sdkmanager "build-tools;36.0.0"
```

If Flutter reports that another Build Tools version is required, install the version shown by `flutter doctor`

For example:

```powershell
sdkmanager "build-tools;28.0.3"
```

---

# 9. Accept Android Licenses

Run:

```powershell
flutter doctor --android-licenses
```

Read each license and accept it when prompted

Usually:

```text
y
```

is used to accept a license

---

# 10. Check Flutter

Run:

```powershell
flutter doctor
```

You should see something similar to:

```text
[✓] Flutter
[✓] Android toolchain
```

Warnings about Chrome or Visual Studio can be ignored if you are only developing Android applications

---

# 11. Create a Flutter Project

Create a new project:

```powershell
flutter create my_app
```

Enter the project:

```powershell
cd my_app
```

Open it in VS Code:

```powershell
code .
```

The project should contain:

```text
my_app/
├── android/
├── ios/
├── lib/
│   └── main.dart
├── test/
├── web/
├── windows/
├── pubspec.yaml
└── README.md
```

---

# 12. Prepare Your Physical Android Phone

You can run the Flutter application directly on your Android phone

## Enable Developer Options

On your phone:

**Settings → About phone → Build number**

Tap **Build number 7 times**

The exact location may differ depending on your phone manufacturer

---

# 13. Enable USB Debugging

Open:

**Settings → Developer options**

Enable:

```text
USB debugging
```

Keep the phone unlocked

---

# 14. Connect the Phone

Connect the phone to your PC using a **USB data cable**

If the phone asks:

```text
Allow USB debugging?
```

select:

```text
Allow
```

You may also select:

```text
Always allow from this computer
```

If the phone provides USB connection options, choose:

```text
File transfer / Android Auto
```

---

# 15. Check the Phone with ADB

Run:

```powershell
adb devices
```

You should see:

```text
List of devices attached
XXXXXXXX    device
```

If you see:

```text
XXXXXXXX    unauthorized
```

look at your phone and accept the **USB debugging authorization** popup

If you see only:

```text
List of devices attached
```

with no device underneath, Windows has not detected the phone through ADB yet

Check:

- USB debugging is enabled
    
- Phone is unlocked
    
- USB cable supports data
    
- USB connection mode is not charge-only
    
- The appropriate USB driver is installed if required by the phone

---

# 16. Check the Phone with Flutter

Run:

```powershell
flutter devices
```

Your Android phone should appear

Example:

```text
CPH2235 (mobile) • 126bda5d • android-arm64 • Android 13
```

The device name and ID will be different for each phone

---

# 17. Run the Flutter Application

Make sure you are inside the Flutter project:

```powershell
cd path\to\my_app
```

Then:

```powershell
flutter run
```

Flutter will:

```text
Flutter project
      ↓
Gradle
      ↓
Build Android APK
      ↓
Install APK on phone
      ↓
Launch application
```

The first build may take several minutes because Gradle may need to download and prepare dependencies don't worry

---

# 18. Hot Reload

While:

```powershell
flutter run
```

is running, modify your Dart code

Then press:

```text
r
```

in the terminal

This performs a **Hot Reload**

---

# 19. Stop the Application

To stop the Flutter debugging session:

```text
Ctrl + C
```

---

# 20. Useful Commands

### Check Flutter

```powershell
flutter --version
```

### Check the complete setup

```powershell
flutter doctor
```

### Check Android devices

```powershell
flutter devices
```

### Check ADB devices

```powershell
adb devices
```

### Create a Flutter project

```powershell
flutter create my_app
```

### Install project dependencies

```powershell
flutter pub get
```

### Run the application

```powershell
flutter run
```

---
## Important

You **do not need Android Studio** for this setup

The essential Android components are:

```text
Android SDK
├── cmdline-tools
│   └── latest
│       └── bin
│           └── sdkmanager.bat
├── platform-tools
│   └── adb.exe
├── platforms
│   └── android-36
└── build-tools
    └── 36.0.0
```

Flutter uses these Android SDK components to build, install, and debug your application on the Android device