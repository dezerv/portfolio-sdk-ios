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
            targets: ["PortfolioTrackerSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", exact: "8.43.0")
    ],
    targets: [
        .target(
            name: "PortfolioTrackerSDKWrapper",
            dependencies: [
                "PortfolioTrackerSDK",
                .product(name: "Sentry", package: "sentry-cocoa")
            ]
        ),
        .binaryTarget(
            name: "PortfolioTrackerSDK",
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.7.1/PortfolioTrackerSDK.xcframework.zip",
            checksum: "ced82da7f82251cba3c6868692c2582b1dac4e9c04cb11fc6162939c78c1cd51"
        )
    ]
)
