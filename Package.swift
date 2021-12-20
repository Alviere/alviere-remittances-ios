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
            url: "https://github.com/Alviere/alviere-remittances-ios/releases/download/0.9.3/RemittancesSDK.xcframework.zip",
            checksum: "b244fc4124cb2120135b11defdb32d71aa80f6fd78b33a0d2eafe3ecfd679398"
        )
    ]
)
