// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "SimpleKeychain",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v7),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SimpleKeychain",
            targets: ["SimpleKeychain"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/svetrancicik/Quick.git",
            branch: "quick-7-3-0"
        ),
        .package(
            url: "https://github.com/svetrancicik/Nimble.git",
            branch: "nimble-13-0-0"
        )
    ],
    targets: [
        .target(
            name: "SimpleKeychain",
            dependencies: [],
            path: "SimpleKeychain",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "SimpleKeychainTests",
            dependencies: [
                "SimpleKeychain",
                .product(name: "Quick", package: "Quick"),
                .product(name: "Nimble", package: "Nimble"),
            ],
            path: "SimpleKeychainTests",
            exclude: ["Info.plist"])
    ]
)
