xcodebuild archive \
    -project TestLib.xcodeproj \
    -scheme TestLib \
    -destination "generic/platform=iOS" \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "archives/TestLib" \