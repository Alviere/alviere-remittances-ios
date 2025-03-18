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
            .exact("0.9.27")
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
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.27/RemittancesSDK.xcframework.zip",
            checksum: "d2bff832559bc27860a52015db79d3a689f4881bde73d55ffe7bcddd6d9e6779"
        )
    ]
)
