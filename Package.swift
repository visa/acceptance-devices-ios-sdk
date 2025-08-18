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
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.AuthModule/3.1.0/com.visa.AuthModule-3.1.0.zip",
            checksum: "4cf8fd43a6b92fb3c1056504cf6a9076108b009d9b790175bab2e64b2388dc26"
        ),
        
        .binaryTarget(
            name: "CoreModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.CoreModule/3.1.0/com.visa.CoreModule-3.1.0.zip",
            checksum: "6fed335f190aa926c715a5e4bd57303af38ce79af05be41c74c3cc7189efbc88"
        ),
        
        .binaryTarget(
            name: "TapToPhone",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.TapToPhone/3.1.0/com.visa.TapToPhone-3.1.0.zip",
            checksum: "750e64aa481855a3ec50700733fd1a2342b5eabe01802bfc889571482cb7e3bf"
        ),
        
        .binaryTarget(
            name: "DefaultUI",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.DefaultUI/3.1.0/com.visa.DefaultUI-3.1.0.zip",
            checksum: "df5bf38b0d0dd54e960a9aae81eaab99932210874ea0c42c4656420b88505987"
        ),
        
        .binaryTarget(
            name: "m-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/m-sensory-branding-iOS/3.0.0/m-sensory-branding-iOS-3.0.0.zip",
            checksum: "352b9e554cac71f2b3a5f109c990744afefef8a30e6834ea9ce2fac7cfca3fa6"
        ),
        
        .binaryTarget(
            name: "IOSDesignSystem",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.ios.designsystem/0.0.7/com.visa.ios.designsystem-0.0.7.zip",
            checksum: "60313cf39eb7b4b423354657a2df21a87d4525b5f4a1db4eb71245fe4eca6120"
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