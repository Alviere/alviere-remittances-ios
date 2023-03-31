// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RemittancesSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "RemittancesSDK",
            type: .static,
            targets: ["RemittancesSDKDeps"]
        )
    ],
    dependencies: [
        .package(
            name: "AlCore",
            url: "https://github.com/Alviere/alviere-core-ios.git",
            .exact("0.9.21")
        )
    ],
    targets: [
        .target(
            name: "RemittancesSDKDeps",
            dependencies: [
                "RemittancesSDK",
                "AlCore"
            ],
            path: "RemittancesSDKDeps"
        ),
        .binaryTarget(
            name: "RemittancesSDK",
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.21/RemittancesSDK.xcframework.zip",
            checksum: "58afd73a5e2d658fa9df47956fef78290d2f3fb27a03fe206379cd20d16f35ef"
        )
    ]
)
