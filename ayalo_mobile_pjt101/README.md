# Ayalo Mobile

A Mobile version of Ayalo

## About Ayalo
This app is for leasing of Equipments to both large and Small scale businesses which can't afford the equipments due to it high cost or did not avoid it due to running cost.

## Technologies
- Dart
- Python
- Flutter
- Django
- Figma
- Firebase

## Prerequisite
- Flutter
- Terminal

## How to contribute

1. Fork the repo.

2. Clone the repo into your local machine.

3. Create an upstream on your local machine to pull the latest code from the develop branch of this repository

4. Create a new branch on your local machine.

5. Switch to the branch and make all changes on that branch.

6. Commit changes to the branch and push to your forked repo.

7. Come back to this repo and open a pull request on the develop branch.

8. Link the pull request with your issue.

9. Do not merge your pull request yourself. Wait for review and merging.

## How to install Flutter
1. Go to URL, [Install Flutter](https://flutter.dev/docs/get-started/install/windows) and download the latest Flutter SDK. As of April 2019, the version is 1.2.1 and the file is flutter_windows_v1.2.1-stable.zip.

2. Unzip the zip archive in a folder, say C:\flutter\

3. Update the system path to include flutter bin directory.

4. Flutter provides a tool, flutter doctor to check that all the requirement of flutter development is met.

> flutter doctor

5. Running the above command will analyze the system and show its report as shown below

>Doctor summary (to see all details, run flutter doctor -v):
>[√] Flutter (Channel stable, v1.2.1, on Microsoft Windows [Version
>10.0.17134.706], locale en-US)
>[√] Android toolchain - develop for Android devices (Android SDK version
>28.0.3)
>[√] Android Studio (version 3.2)
>[√] VS Code, 64-bit edition (version 1.29.1)
>[!] Connected device
>! No devices available
>! Doctor found issues in 1 category.
 The report says that all development tools are available but the device is not connected. We can fix this by connecting an android device through USB or starting an android emulator.

6. Install the latest Android SDK, if reported by flutter doctor

7. Install the latest Android Studio, if reported by flutter doctor

8. Start an android emulator or connect a real android device to the system.

9. Install Flutter and Dart plugin for Android Studio. It provides startup template to create new Flutter application, an option to run and debug Flutter application in the Android studio itself, etc.,

- Open Android Studio.

- Click File → Settings → Plugins.

- Select the Flutter plugin and click Install.

- Click Yes when prompted to install the Dart plugin.

- Restart Android studio.

## Getting production file

From the command line:
> Enter cd [project]

Run
> flutter build apk --split-per-abi

(The flutter build command defaults to --release.)

This command results in three APK files:

[project]/build/app/outputs/apk/release/app-armeabi-v7a-release.apk
[project]/build/app/outputs/apk/release/app-arm64-v8a-release.apk
[project]/build/app/outputs/apk/release/app-x86_64-release.apk
Removing the --split-per-abi flag results in a fat APK that contains your code compiled for all the target ABIs. Such APKs are larger in size than their split counterparts, causing the user to download native binaries that are not applicable to their device’s architecture.

## User Guide
In progress