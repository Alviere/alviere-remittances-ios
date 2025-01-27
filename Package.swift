// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "RemittancesSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
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
            .exact("0.9.26")
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
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.26/RemittancesSDK.xcframework.zip",
            checksum: "4a575b5a3d1e77217a27d7214b1a7d3509b03e61c15fdf37e885b5cbfee0c354"
        )
    ]
)
