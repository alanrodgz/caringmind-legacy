// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "CaringMind",
    platforms: [
        .iOS(.v14),    // Set the minimum iOS version here
        .watchOS(.v7)  // Set the minimum watchOS version if watchOS support is needed
    ],
    products: [
        .library(
            name: "CaringMind",
            targets: ["CaringMind"]
        ),
    ],
    dependencies: [
        // Add the GoogleSignIn package as a dependency
        .package(url: "https://github.com/google/GoogleSignIn-iOS.git", from: "6.0.0"), // or latest version
    ],
    targets: [
        .target(
            name: "CaringMind",
            dependencies: [
                .product(name: "GoogleSignIn", package: "GoogleSignIn-iOS") // Add GoogleSignIn as a target dependency
            ],
            path: "caringmind",
            resources: [
                .process("Preview Content/Preview Assets.xcassets"),
                .process("Assets.xcassets")
            ]
        ),
        .testTarget(
            name: "CaringMindTests",
            dependencies: ["CaringMind"],
            path: "caringmindTests"
        ),
    ]
)
