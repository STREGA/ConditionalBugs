// swift-tools-version: 5.9.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConditionalBugs",
    products: [
        // An executbale test to build
        .executable(name: "ConditionalBugs", targets: ["ConditionalBugs"]),
    ],
    dependencies:
        // Helpers listed at the bottom of this file
        packageDependencies
    ,
    targets: [
        // Include all of the targets below, but filter them with SPM target conditionals feature
        .executableTarget(name: "ConditionalBugs", dependencies: [
            // Working in Xcode 16
            .targetItem(name: "iOSOnly",        condition: .when(platforms: [ .iOS          ])),
            .targetItem(name: "MacCatalystOnly",condition: .when(platforms: [ .macCatalyst  ])),
            .targetItem(name: "MacOSOnly",      condition: .when(platforms: [ .macOS        ])),
            .targetItem(name: "tvOSOnly",       condition: .when(platforms: [ .tvOS         ])),
            .targetItem(name: "watchOSOnly",    condition: .when(platforms: [ .watchOS      ])),
            .targetItem(name: "visionOSOnly",   condition: .when(platforms: [ .visionOS     ])),
            .targetItem(name: "LinuxOnly",      condition: .when(platforms: [ .linux        ])),
            
            // Still not working in Xcode 16
            .targetItem(name: "AndroidOnly",    condition: .when(platforms: [ .android      ])),
            .targetItem(name: "WASIOnly",       condition: .when(platforms: [ .wasi         ])),
            .targetItem(name: "WindowsOnly",    condition: .when(platforms: [ .windows      ])),
        ]),
        
        // These targets should only be included when building for the given platform
        // If they are built otherwise an error will be shown. The error menas the SPM target
        // conditionals feature is being ignored buy the build system (looking at you Xcode)
        
        // Working in Xcode 16
        .target(name: "iOSOnly"),
        .target(name: "MacCatalystOnly"),
        .target(name: "MacOSOnly"),
        .target(name: "tvOSOnly"),
        .target(name: "watchOSOnly"),
        .target(name: "visionOSOnly"),
        .target(name: "LinuxOnly"),
        
        // Still not working in Xcode 16
        .target(name: "WASIOnly"),
        .target(name: "AndroidOnly"),
        .target(name: "WindowsOnly"),
    ]
)

// Helpers for building some platforms
var packageDependencies: [Package.Dependency] {
    var deps: [Package.Dependency] = []

#if os(macOS) || os(Linux) 
    deps.append(
        // Used to build WASI on macOS or Linux
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.0")
    )
#endif
    
    return deps
}
