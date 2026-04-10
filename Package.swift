// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MposUI",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MposUI",
            targets: ["MposUI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", exact: Version(4,5,2)),
    ],
    targets: [

        .binaryTarget(
            name: "am-sensory-branding-vid",
            url: "https://repo.visa.com/mpos-releases/io/payworks/am/3.0.0-vid/am-3.0.0-vid.zip",
            checksum: "cd36c3b4c3556ceae73a0a299f6fe3b86a43a3b1f3616d2d660aefa6757b8b5c"
        ),
        
        .binaryTarget(
            name: "am-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/am/3.5.0/am-3.5.0.zip",
            checksum: "a8d02e623d241725096cb265d2f58cc8cc067f62510593051b17035985c73f1b"
        ),
        
        .binaryTarget(
            name: "v-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/v-sensory-branding-iOS/3.0.0/v-sensory-branding-iOS-3.0.0.zip",
            checksum: "8496e9a3caad42db8116831649f1964c5acdeb8ac89b67ac5db7cd3d92a99173"
        ),
        
        .binaryTarget(
            name: "ThinClient",
            url: "https://repo.visa.com/mpos-releases/io/payworks/ttp-thinclient-ios-release/26.04.14/ttp-thinclient-ios-release-26.04.14.zip",
            checksum: "233fdac27303a812d20274cb03e5d72442807a6c64c66e73cfcf6162e69d966d"
        ),

        .binaryTarget(
            name: "AuthModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.AuthModule/3.6.0/com.visa.AuthModule-3.6.0.zip",
            checksum: "5bafadb8a415a8176aafd2aca6395fe22320702fd4879390dd3457f83bfcd9a1"
        ),

        .binaryTarget(
            name: "CoreModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.CoreModule/3.6.0/com.visa.CoreModule-3.6.0.zip",
            checksum: "bf946b940f9994291f9b276ed7e2cd33652b2a2a623ce2348477de5203ac319e"
        ),

        .binaryTarget(
            name: "TapToPhone",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.TapToPhone/3.6.0/com.visa.TapToPhone-3.6.0.zip",
            checksum: "25b6d3fd7e51c84cd5fa41ba70b84d2c615afff281f2efd63ebd6df4cb0cbc77"
        ),

        .binaryTarget(
            name: "DefaultUI",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.DefaultUI/3.6.0/com.visa.DefaultUI-3.6.0.zip",
            checksum: "430d646b81e8494f87d1e8c24dd1a68b044728b5dca70cfde421a5203720e56d"
        ),
        
        .binaryTarget(
            name: "m-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/m-sensory-branding-iOS/3.2.0/m-sensory-branding-iOS-3.2.0.zip",
            checksum: "a88db7dc8fe6f6b01d125ed0f13e793c3fa7a231b39b998f72fcf6a670d40d4d"
        ),
        
        .binaryTarget(
            name: "IOSDesignSystem",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.ios.designsystem/1.1.0/com.visa.ios.designsystem-1.1.0.zip",
            checksum: "e7603e5a9e9e33683310ffa1c38108feff32d5d20627139aceb7a2783662a623"
        ),
        .target(
            name: "MposUI",
            dependencies: [
                "am-sensory-branding-vid",
                "am-sensory-branding",
                "v-sensory-branding",
                "ThinClient",
                "AuthModule",
                "CoreModule",
                "TapToPhone",
                "DefaultUI",
                "m-sensory-branding",
                "IOSDesignSystem",
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "Sources"
        )
    ]
)
