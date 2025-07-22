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
        .binaryTarget( // This is now a binary target
            name: "PortfolioTrackerSDK", // A unique name for your binary target
            url: "https://github.com/yourusername/YourRepoName/releases/download/1.0.0/DezervPartnerShipPackage.xcframework.zip", // REPLACE with your actual URL
            checksum: "YOUR_SHA256_CHECKSUM_HERE" // REPLACE with the actual checksum of the .zip file
        )
    ]
)