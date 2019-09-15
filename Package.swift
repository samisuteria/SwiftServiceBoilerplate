// swift-tools-version:5.0
import PackageDescription

let package = Package(name: "Demo")

package.products = [
    .executable(name: "Run", targets: ["Run"]),
    .library(name: "Demo", targets: ["Demo"])
]

package.dependencies = [
    .package(url: "https://github.com/vapor/vapor.git", .exact("3.3.0")),

    // Test Dependencies
    .package(url: "https://github.com/quick/quick.git", .exact("2.2.0")),
    .package(url: "https://github.com/quick/nimble.git", .exact("8.0.4")),
]

package.targets = [
    .target(
        name: "Run",
        dependencies: [
            "Demo",
        ]),
    .target(
        name: "Demo",
        dependencies: [
            "Vapor",
        ]),
    .testTarget(
        name: "DemoTests",
        dependencies: [
            "Demo",
            "Quick",
            "Nimble",
        ]),
]
