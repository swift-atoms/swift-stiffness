// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-stiffness",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Stiffness", targets: ["Stiffness"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-force.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-space.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Stiffness",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity"),
                .product(name: "Force", package: "swift-force"),
                .product(name: "Space", package: "swift-space"),
            ]
        ),
        .testTarget(
            name: "Stiffness Tests",
            dependencies: [
                .target(name: "Stiffness")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
