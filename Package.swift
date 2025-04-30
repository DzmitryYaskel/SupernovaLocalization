// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SupernovaLocalization",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SupernovaLocalization",
            targets: ["SupernovaLocalization"]),
    ],
    targets: [
        .target(
            name: "SupernovaLocalization",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SupernovaLocalizationTests",
            dependencies: ["SupernovaLocalization"]),
    ]
)
