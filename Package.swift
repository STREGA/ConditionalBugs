// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConditionalBugs",
    products: [
        .executable(name: "ConditionalBugs", targets: ["ConditionalBugs"]),
    ],
    targets: [
        .executableTarget(name: "ConditionalBugs", dependencies: [
            .targetItem(name: "AndroidOnly",    condition: .when(platforms: [ .android      ])),
            .targetItem(name: "iOSOnly",        condition: .when(platforms: [ .iOS          ])),
            .targetItem(name: "LinuxOnly",      condition: .when(platforms: [ .linux        ])),
            .targetItem(name: "MacCatalystOnly",condition: .when(platforms: [ .macCatalyst  ])),
            .targetItem(name: "MacOSOnly",      condition: .when(platforms: [ .macOS        ])),
            .targetItem(name: "tvOSOnly",       condition: .when(platforms: [ .tvOS         ])),
            .targetItem(name: "WASIOnly",       condition: .when(platforms: [ .wasi         ])),
            .targetItem(name: "watchOSOnly",    condition: .when(platforms: [ .watchOS      ])),
            .targetItem(name: "WindowsOnly",    condition: .when(platforms: [ .windows      ])),
        ]),
        
        .target(name: "AndroidOnly"),
        .target(name: "iOSOnly"),
        .target(name: "LinuxOnly"),
        .target(name: "MacCatalystOnly"),
        .target(name: "MacOSOnly"),
        .target(name: "tvOSOnly"),
        .target(name: "WASIOnly"),
        .target(name: "watchOSOnly"),
        .target(name: "WindowsOnly"),
    ]
)
