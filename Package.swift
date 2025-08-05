// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "PortfolioTrackerSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PortfolioTrackerSDK",
            targets: ["PortfolioTrackerSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "PortfolioTrackerSDK",
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.1.8/PortfolioTrackerSDK.xcframework.zip",
            checksum: "ef9806235d923c1fc91bd47ccd0533a95afff181e8c2b6cb895d996f0cf36437"
        )
    ]
)
