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
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.7.0/PortfolioTrackerSDK.xcframework.zip",
            checksum: "71c63261c2251fbbc0d9ad3487785c2e7511fca694f557b4cdc371cef10d3f0f"
        )
    ]
)
