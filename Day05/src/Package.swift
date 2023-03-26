// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Day05",
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.5.0"))
    ],
    targets: [
        .executableTarget(
            name: "Day05_01",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_02",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_03",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_04",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_05",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_06",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_07",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_08",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_09",
            dependencies: ["RxSwift"]),
        .executableTarget(
            name: "Day05_10",
            dependencies: ["RxSwift"])
    ]
)
