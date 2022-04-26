// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "TagsFlowLayout",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TagsFlowLayout", targets: ["TagsFlowLayout"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TagsFlowLayout",
            dependencies: [],
            path: "Sources")
    ]
)
