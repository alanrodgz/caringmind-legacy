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
        // Add any dependencies here, e.g., .package(url: "https://github.com/Dependency/Repo", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CaringMind",
            dependencies: [],
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
