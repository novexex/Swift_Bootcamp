// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Day09",
    dependencies: [],
    targets: [
        .executableTarget(
            name: "Day09",
            dependencies: []),
        .testTarget(
            name: "Day09Tests",
            dependencies: ["Day09"]),
    ]
)
