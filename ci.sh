#!/bin/bash
set -e
fvm flutter test
fvm flutter clean && fvm flutter pub get
fvm flutter build apk --release
cd android
fastlane fastlane distribute
