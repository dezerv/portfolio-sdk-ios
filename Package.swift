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
        url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/0.1.0/PortfolioTrackerSDK.xcframework.zip",
        checksum: "d28c481efbb6f1fd3f382d667878554a043fc94527e3e4a0445e387bef862578"
    )
    ]
)