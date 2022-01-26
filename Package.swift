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
            .exact("0.9.7")
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
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.7/RemittancesSDK.xcframework.zip",
            checksum: "09ddcd4fc08addae78e2ee308b6c922c4ff9e7deb1ab4a89b3187551e21219d0"
        )
    ]
)
