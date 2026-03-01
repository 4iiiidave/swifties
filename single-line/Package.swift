// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "single-line",
    platforms: [.macOS(.v10_15)],
    targets: [
        .executableTarget(
            name: "single-line"
        ),
    ]
)
