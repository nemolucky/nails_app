#!/bin/bash
echo "Fixing Android build..."
pkill -f gradle
flutter clean
rm -rf android/app/build
rm -rf build/
cd android
./gradlew clean
cd ..
flutter pub get
echo "Fixed! Run: flutter run"