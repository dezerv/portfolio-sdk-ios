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
        url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/0.0.2/PortfolioTrackerSDK.xcframework.zip",
        checksum: "6a1076f57b42c7f2ebb7ff1b01c94fd1f07b6d050e94ec41c22a9efc013d672d"
    )
    ]
)