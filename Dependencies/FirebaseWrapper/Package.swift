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
            dependencies: [
                // Begin FirebaseAnalytics
                .target(name: "FirebaseAnalytics"),
                .target(name: "FBLPromises"),
                .target(name: "FirebaseAnalyticsSwift"),
                .target(name: "FirebaseCore"),
                .target(name: "FirebaseCoreInternal"),
                .target(name: "FirebaseInstallations"),
                .target(name: "GoogleAppMeasurement"),
                .target(name: "GoogleAppMeasurementIdentitySupport"),
                .target(name: "GoogleUtilities"),
                .target(name: "nanopb"),
                // End FirebaseAnalytics
                //
                // Begin FirebaseCrashlytics
                .target(name: "FirebaseCoreExtension"),
                .target(name: "FirebaseCrashlytics"),
                .target(name: "FirebaseSessions"),
                .target(name: "GoogleDataTransport"),
                .target(name: "PromisesSwift"),
                // End FirebaseCrashlytics
                //
                // Begin FirebaseMessaging
                .target(name: "FirebaseMessaging"),
//                .target(name: "GoogleDataTransport"),
                // End FirebaseMessaging
                //
                // Begin FirebasePerformance
                .target(name: "FirebaseABTesting"),
//                .target(name: "FirebaseCoreExtension"),
                .target(name: "FirebasePerformance"),
                .target(name: "FirebaseRemoteConfig"),
//                .target(name: "FirebaseSessions"),
//                .target(name: "GoogleDataTransport"),
//                .target(name: "PromisesSwift"),
                // End FirebasePerformance
            ]),
        // Begin FirebaseAnalytics
        .binaryTarget(name: "FirebaseAnalytics", path: "artifacts/FirebaseAnalytics/FirebaseAnalytics.xcframework"),
        .binaryTarget(name: "FBLPromises", path: "artifacts/FirebaseAnalytics/FBLPromises.xcframework"),
        .binaryTarget(name: "FirebaseAnalyticsSwift", path: "artifacts/FirebaseAnalytics/FirebaseAnalyticsSwift.xcframework"),
        .binaryTarget(name: "FirebaseCore", path: "artifacts/FirebaseAnalytics/FirebaseCore.xcframework"),
        .binaryTarget(name: "FirebaseCoreInternal", path: "artifacts/FirebaseAnalytics/FirebaseCoreInternal.xcframework"),
        .binaryTarget(name: "FirebaseInstallations", path: "artifacts/FirebaseAnalytics/FirebaseInstallations.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurement", path: "artifacts/FirebaseAnalytics/GoogleAppMeasurement.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurementIdentitySupport", path: "artifacts/FirebaseAnalytics/GoogleAppMeasurementIdentitySupport.xcframework"),
        .binaryTarget(name: "GoogleUtilities", path: "artifacts/FirebaseAnalytics/GoogleUtilities.xcframework"),
        .binaryTarget(name: "nanopb", path: "artifacts/FirebaseAnalytics/nanopb.xcframework"),
        // End FirebaseAnalytics
        //
        // Begin FirebaseCrashlytics
        .binaryTarget(name: "FirebaseCoreExtension", path: "artifacts/FirebaseCrashlytics/FirebaseCoreExtension.xcframework"),
        .binaryTarget(name: "FirebaseCrashlytics", path: "artifacts/FirebaseCrashlytics/FirebaseCrashlytics.xcframework"),
        .binaryTarget(name: "FirebaseSessions", path: "artifacts/FirebaseCrashlytics/FirebaseSessions.xcframework"),
        .binaryTarget(name: "GoogleDataTransport", path: "artifacts/FirebaseCrashlytics/GoogleDataTransport.xcframework"),
        .binaryTarget(name: "PromisesSwift", path: "artifacts/FirebaseCrashlytics/PromisesSwift.xcframework"),
        // End FirebaseCrashlytics
        //
        // Begin FirebaseMessaging
        .binaryTarget(name: "FirebaseMessaging", path: "artifacts/FirebaseMessaging/FirebaseMessaging.xcframework"),
//        .binaryTarget(name: "GoogleDataTransport", path: "artifacts/FirebaseMessaging/GoogleDataTransport.xcframework"),
        // End FirebaseMessaging
        //
        // Begin FirebasePerformance
        .binaryTarget(name: "FirebaseABTesting", path: "artifacts/FirebasePerformance/FirebaseABTesting.xcframework"),
//        .binaryTarget(name: "FirebaseCoreExtension", path: "artifacts/FirebasePerformance/FirebaseCoreExtension.xcframework"),
        .binaryTarget(name: "FirebasePerformance", path: "artifacts/FirebasePerformance/FirebasePerformance.xcframework"),
        .binaryTarget(name: "FirebaseRemoteConfig", path: "artifacts/FirebasePerformance/FirebaseRemoteConfig.xcframework"),
//        .binaryTarget(name: "FirebaseSessions", path: "artifacts/FirebasePerformance/FirebaseSessions.xcframework"),
//        .binaryTarget(name: "GoogleDataTransport", path: "artifacts/FirebasePerformance/GoogleDataTransport.xcframework"),
//        .binaryTarget(name: "PromisesSwift", path: "artifacts/FirebasePerformance/PromisesSwift.xcframework"),
        // End FirebasePerformance
    ]
)
