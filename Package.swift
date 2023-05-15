// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConditionalBugs",
    products: [
        .library(name: "ConditionalBugs", targets: ["ConditionalBugs"]),
    ],
    targets: [
        .target(name: "ConditionalBugs", dependencies: [
            .targetItem(name: "LinuxOnly", condition: .when(platforms: [.linux])),
            .targetItem(name: "MacOSOnly", condition: .when(platforms: [.macOS])),
            .targetItem(name: "WindowsOnly", condition: .when(platforms: [.windows])),
        ]),
        
        .target(name: "LinuxOnly"),
        .target(name: "MacOSOnly"),
        .target(name: "WindowsOnly")
    ]
)
