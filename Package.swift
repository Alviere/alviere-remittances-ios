// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "RemittancesSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
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
            .exact("0.9.24")
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
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.24/RemittancesSDK.xcframework.zip",
            checksum: "6d3f7b5cf061ff16e49967b5475ea27287a87b7dd5294f6debec25d697cb61ee"
        )
    ]
)
