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
                "PortfolioTrackerSDKBinary",
                .product(name: "Sentry", package: "sentry-cocoa")
            ]
        ),
        .binaryTarget(
            name: "PortfolioTrackerSDKBinary",
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.1.22/PortfolioTrackerSDK.xcframework.zip",
            checksum: "acc57fd56cd426c669b85fef6bd84a2d95dbc2d38b8bdaaf50e886ece0e06893"
        )
    ]
)
