// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "OpenTripMapAPI",
    platforms: [
        .iOS(.v14), .macOS(.v11), .tvOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "OpenTripMapAPI",
            targets: ["OpenTripMapAPI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OpenTripMapAPI",
            dependencies: []),
    ]
)
