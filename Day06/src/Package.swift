// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Day06",
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift.git", branch: "master")
    ],
    targets: [
        .executableTarget(
            name: "Day06",
            dependencies: [.product(name: "Realm", package: "realm-swift")])
    ]
)
