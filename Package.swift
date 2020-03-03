// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorizeSwift",
    products: [
        .library(name: "ColorizeSwift", targets: ["ColorizeSwift"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "ColorizeSwift", dependencies: []),
        .testTarget(name: "ColorizeSwiftTests",dependencies: ["ColorizeSwift"]),
    ]
)
