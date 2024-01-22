// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlayKitGoogleCast",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PlayKitGoogleCast",
            targets: ["PlayKitGoogleCast"]),
    ],
    dependencies: [
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PlayKitGoogleCast",
            dependencies: [
                "XCGLogger",
                .target(name: "GoogleCast")
            ],
            path: "Sources/"
        ),
        .binaryTarget(
          name: "GoogleCast",
          url: "https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-no-bluetooth-4.8.0_static_xcframework.zip?hl=es-419",
          checksum: "a9004daa6a103c40d867d425549ffa99ff11a7d8884d089bba11cabc0ee47ab8"
        )
    ]
)

