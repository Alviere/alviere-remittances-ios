// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RemittancesSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "RemittancesSDK", targets: ["RemittancesSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "RemittancesSDK",
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.2/RemittancesSDK.xcframework.zip",
            checksum: "ab6bb6b9930369469e2b4cbc8947d7d831487ff8d86c06e4fc35e3232140ae18"
        )
    ]
)