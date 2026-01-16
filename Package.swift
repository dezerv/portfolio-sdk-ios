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
    # dependencies: [
    #     .package(url: "https://github.com/getsentry/sentry-cocoa.git", exact: "8.43.0")
    # ],
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
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.7.2/PortfolioTrackerSDK.xcframework.zip",
            checksum: "44c44d5aff363d2b3926439fa6de8fe45e26308e2b00e2b6f58825cf0b57d1d1"
        )
    ]
)
