// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "date-8601",
  platforms: [.macOS(.v10_15)],
  targets: [
    .executableTarget(
        name: "date-8601"
    ),
  ]
)
