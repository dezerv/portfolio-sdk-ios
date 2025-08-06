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
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.1.20/PortfolioTrackerSDK.xcframework.zip",
            checksum: "8cc2fb23642f10b708cc68a6d2809bb414585dc7c30e1e58a97e55b924fb6678"
        )
    ]
)
