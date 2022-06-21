// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BuildTools",
    platforms: [.macOS(.v10_11)],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.49.10")
    ],
    targets: [
        .target(
            name: "BuildTools",
            dependencies: []
        ),
        .testTarget(
            name: "BuildToolsTests",
            dependencies: ["BuildTools"]
        )
    ]
)
