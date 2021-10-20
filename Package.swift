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
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.1/RemittancesSDK.xcframework.zip",
            checksum: "474f4c2852a153a2e6827557b7b976a9ea98706fffb7b7a613d98bf7b250c4f7"
        )
    ]
)