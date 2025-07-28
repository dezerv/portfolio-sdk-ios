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
        url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/0.0.4/PortfolioTrackerSDK.xcframework.zip",
        checksum: "ff031d73cd4755a0c52689a123e5599efbc8a7d1577fe3c0ba2bbcfd8008dfb8"
    )
    ]
)