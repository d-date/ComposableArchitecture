// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ComposableArchitecture",
    products: [
        .library(
            name: "ComposableArchitecture",
            targets: ["ComposableArchitecture"]),
    ],
    dependencies: [
        .package(name: "CasePaths", url: "https://github.com/pointfreeco/swift-case-paths", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "ComposableArchitecture",
            dependencies: ["CasePaths"]),
        .testTarget(
            name: "ComposableArchitectureTests",
            dependencies: ["ComposableArchitecture"]),
    ]
)
