// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "PortfolioTrackerSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PortfolioTrackerSDK",
            targets: ["PortfolioTrackerSDK"] // This name should match your binary target
        )
    ],
    targets: [
        .binaryTarget(
        name: "PortfolioTrackerSDK",
        url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/0.0.3/PortfolioTrackerSDK.xcframework.zip",
        checksum: "a66ce719dc0c7c76afaedb0f06d94389b37eddb83a1406a91e1d5722c378aa18"
    )
    ]
)