// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "whitespace-collapse",
    platforms: [.macOS(.v10_15)],
    targets: [
        .executableTarget(
            name: "whitespace-collapse"
        ),
    ]
)
