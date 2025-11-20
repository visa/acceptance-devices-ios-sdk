// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MposUI",
    platforms: [
        .iOS("17.4")
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
            url: "https://repo.visa.com/mpos-releases/io/payworks/am/3.4.0/am-3.4.0.zip",
            checksum: "b1ae4646a02721c8dd5e302e6302f6ea217186cd79479f3dcc7f078a928da468"
        ),
        
        .binaryTarget(
            name: "v-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/v-sensory-branding-iOS/3.0.0/v-sensory-branding-iOS-3.0.0.zip",
            checksum: "8496e9a3caad42db8116831649f1964c5acdeb8ac89b67ac5db7cd3d92a99173"
        ),
        
        .binaryTarget(
            name: "ThinClient",
            url: "https://repo.visa.com/mpos-releases/io/payworks/ttp-thinclient-ios-release/25.06.01/ttp-thinclient-ios-release-25.06.01.zip",
            checksum: "5474ec1e30bfd73678957f4ba45d4715c39114e1fccc4ca72175b1aaaca411fa"
        ),
        
        .binaryTarget(
            name: "AuthModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.AuthModule/3.4.0/com.visa.AuthModule-3.4.0.zip",
            checksum: "9743d1b3e61366e5098aac740a78884fcbe638d8324609cb6aaa6b89fc1226e0"
        ),
        
        .binaryTarget(
            name: "CoreModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.CoreModule/3.4.0/com.visa.CoreModule-3.4.0.zip",
            checksum: "660600be49f8179b20a4b5516b08aa62f5d782e228831d0e183d6eb8201dc911"
        ),
        
        .binaryTarget(
            name: "TapToPhone",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.TapToPhone/3.4.0/com.visa.TapToPhone-3.4.0.zip",
            checksum: "bb83234a2b3642bf8167d2b68da3a8d3cada358bb04b146d5bcaa0e93bd628af"
        ),
        
        .binaryTarget(
            name: "DefaultUI",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.DefaultUI/3.4.0/com.visa.DefaultUI-3.4.0.zip",
            checksum: "06883f3745994abf668e22258ae08fd2f83988aeb9fed4feb4e4caa37b212afe"
        ),
        
        .binaryTarget(
            name: "m-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/m-sensory-branding-iOS/3.2.0/m-sensory-branding-iOS-3.2.0.zip",
            checksum: "a88db7dc8fe6f6b01d125ed0f13e793c3fa7a231b39b998f72fcf6a670d40d4d"
        ),
        
        .binaryTarget(
            name: "IOSDesignSystem",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.ios.designsystem/1.0.0/com.visa.ios.designsystem-1.0.0.zip",
            checksum: "0ad0ec750a433eec11cc7fd0deb5afbfad340d7ac4b11403320a06ce7bd6fd70"
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