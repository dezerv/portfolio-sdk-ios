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
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.1.9/PortfolioTrackerSDK.xcframework.zip",
            checksum: "7f4d81b6fbdd462502eebecfa1670b94fe0710726bda94bd4962659194c072c4"
        )
    ]
)
