// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseWrapper",
    products: [
        .library(
            name: "FirebaseWrapper",
            targets: ["FirebaseWrapper"]),
        .library(
            name: "FirebaseAnalytics",
            targets: ["FirebaseAnalytics"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "FirebaseWrapper",
            dependencies: [.target(name: "FirebaseAnalytics")]),
        .binaryTarget(name: "FirebaseAnalytics", path: "artifacts/FirebaseAnalytics/FirebaseAnalytics.xcframework"),
        .binaryTarget(name: "FBLPromises", path: "artifacts/FirebaseAnalytics/FBLPromises.xcframework"),
        .binaryTarget(name: "FirebaseAnalyticsSwift", path: "artifacts/FirebaseAnalytics/FirebaseAnalyticsSwift.xcframework"),
        .binaryTarget(name: "FirebaseCore", path: "artifacts/FirebaseAnalytics/FirebaseCore.xcframework"),
        .binaryTarget(name: "FirebaseCoreInternal", path: "artifacts/FirebaseAnalytics/FirebaseCoreInternal.xcframework"),
        .binaryTarget(name: "FirebaseInstallations", path: "artifacts/FirebaseAnalytics/FirebaseInstallations.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurement", path: "artifacts/FirebaseAnalytics/GoogleAppMeasurement.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurementIdentitySupport", path: "artifacts/FirebaseAnalytics/GoogleAppMeasurementIdentitySupport.xcframework"),
        .binaryTarget(name: "GoogleUtilities", path: "artifacts/FirebaseAnalytics/GoogleUtilities.xcframework"),
        .binaryTarget(name: "nanopb", path: "artifacts/FirebaseAnalytics/nanopb.xcframework")
    ]
)
