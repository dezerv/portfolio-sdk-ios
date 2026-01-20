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
    targets: [
        .target(
            name: "PortfolioTrackerSDKWrapper",
            dependencies: [
                "PortfolioTrackerSDK"
            ]
        ),
        .binaryTarget(
            name: "PortfolioTrackerSDK",
            url: "https://github.com/dezerv/portfolio-sdk-ios/releases/download/v0.7.4/PortfolioTrackerSDK.xcframework.zip",
            checksum: "db38e86df76fc35de6c15594d7399d4e79f674368eac8bbdff12ad0b0939cf3d"
        )
    ]
)
