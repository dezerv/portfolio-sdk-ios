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
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "8.54.0")
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
            checksum: "d4ca3e04a4d1b6f85c4c858179696b42b74ab442cbc126c4b382db45c692304d"
        )
    ]
)
