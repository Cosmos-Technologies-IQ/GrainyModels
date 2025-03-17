// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GrainyModels",
    products: [
        .library(name: "GrainyModels", targets: ["GrainyModels"]),
    ],
    targets: [
        .target(
            name: "GrainyModels"
        ),
    ]
)
