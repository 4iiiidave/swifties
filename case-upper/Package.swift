// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "case-upper",
    platforms: [.macOS(.v10_15)],
    targets: [
        .executableTarget(
            name: "case-upper"
        ),
    ]
)
