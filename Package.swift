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
        .package(url: "https://github.com/airbnb/lottie-spm.git", exact: Version(4,3,2)),
    ],
    targets: [

        .binaryTarget(
            name: "am-sensory-branding-vid",
            url: "https://repo.visa.com/mpos-releases/io/payworks/am/3.0.0-vid/am-3.0.0-vid.zip",
            checksum: "cd36c3b4c3556ceae73a0a299f6fe3b86a43a3b1f3616d2d660aefa6757b8b5c"
        ),
        
        .binaryTarget(
            name: "am-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/am/3.0.0/am-3.0.0.zip",
            checksum: "8298013b9172289069d23cb9246ca189fa944e1b3c6ee7fe206bd9292a77adbe"
        ),
        
        .binaryTarget(
            name: "v-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/v-sensory-branding-iOS/3.0.0/v-sensory-branding-iOS-3.0.0.zip",
            checksum: "8496e9a3caad42db8116831649f1964c5acdeb8ac89b67ac5db7cd3d92a99173"
        ),
        
        .binaryTarget(
            name: "ThinClient",
            path: "./ThinClientModule/Sources/ThinClientModule/ThinClient/ThinClient.xcframework"
        ),
        
        .binaryTarget(
            name: "AuthModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.AuthModule/3.0.0/com.visa.AuthModule-3.0.0.zip",
            checksum: "9901e82e2aa2435096b2d8f98fa0dc73b628fabc50d09a0a24301708475b9dc7"
        ),
        
        .binaryTarget(
            name: "CoreModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.CoreModule/3.0.0/com.visa.CoreModule-3.0.0.zip",
            checksum: "1f7eb8a5e321b9631d1863f8a661b67e6f06e9e05abd65e9bde565a1c2869eb5"
        ),
        
        .binaryTarget(
            name: "TapToPhone",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.TapToPhone/3.0.0/com.visa.TapToPhone-3.0.0.zip",
            checksum: "caa86f573be9c7ef2ff0ee90430e3b6deeb0bab5e04b82f9e3257f1f0d19f075"
        ),
        
        .binaryTarget(
            name: "DefaultUI",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.DefaultUI/3.0.0/com.visa.DefaultUI-3.0.0.zip",
            checksum: "a33cbe5ebc562f9f2d0f7cdfd204fd1bcb38be6c127c591e8bd2373db150b721"
        ),
        
        .binaryTarget(
            name: "m-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/m-sensory-branding-iOS/3.0.0/m-sensory-branding-iOS-3.0.0.zip",
            checksum: "352b9e554cac71f2b3a5f109c990744afefef8a30e6834ea9ce2fac7cfca3fa6"
        ),
        
        .binaryTarget(
            name: "IOSDesignSystem",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.ios.designsystem/0.0.5/com.visa.ios.designsystem-0.0.5.zip",
            checksum: "da5025604534775fa75099f2a2d35aed7f5f2427e903a8df3a09a1d2cb97d198"
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
