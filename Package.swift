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
        url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/0.1.4/PortfolioTrackerSDK.xcframework.zip",
        checksum: "7c84961b834a3dd810d7f8c2441b1185f6c97c640688ea360d2f1ebccd317d60"
    )
    ]
)