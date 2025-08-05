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
        url: "https://github.com/dezerv/portfolio-tracker-sdk-ios/releases/download/0.1.2/PortfolioTrackerSDK.xcframework.zip",
        checksum: "64b76fe363083daa120c7d42e8d382dfc4fcc669fa8764e23c12ed59c0012f6e"
    )
    ]
)