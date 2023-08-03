// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestLibWrapper",
    products: [
        .library(
            name: "TestLibWrapper",
            targets: ["TestLibWrapper"]
        ),
        .library(name: "TestLib", targets: ["TestLib"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TestLibWrapper",
            dependencies: [.target(name: "TestLib")]
        ),
        .binaryTarget(name: "TestLib", path: "TestLib.xcframework"),
    ]
)
