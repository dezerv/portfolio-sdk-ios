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
        url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/0.1.5/PortfolioTrackerSDK.xcframework.zip",
        checksum: "fc9eb5a5404df84301ff7ae37b0466811e4109edb39b7f039ad9a9d23007e187"
    )
    ]
)