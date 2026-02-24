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
            url: "https://repo.visa.com/mpos-releases/io/payworks/ttp-thinclient-ios-release/25.06.03/ttp-thinclient-ios-release-25.06.03.zip",
            checksum: "980b2c60b068eb0ca75a540059ba8882397e0678d38b4ba8c520140cd854b27e"
        ),
        
        .binaryTarget(
            name: "AuthModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.AuthModule/3.5.0/com.visa.AuthModule-3.5.0.zip",
            checksum: "4765e7458800083753afb9487405135e6e257487e66959dfba2da037529187fc"
        ),
        
        .binaryTarget(
            name: "CoreModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.CoreModule/3.5.0/com.visa.CoreModule-3.5.0.zip",
            checksum: "0875cd9027b3d2b330a090757593462860eec6278f427fa68b4fc4146b45357e"
        ),
        
        .binaryTarget(
            name: "TapToPhone",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.TapToPhone/3.5.0/com.visa.TapToPhone-3.5.0.zip",
            checksum: "5ee38029233b947d4ed43d9f7cdcf5ded7925f33fd898efe235a1522f14f4bb6"
        ),
        
        .binaryTarget(
            name: "DefaultUI",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.DefaultUI/3.5.0/com.visa.DefaultUI-3.5.0.zip",
            checksum: "54c32b3963f829b70b51a3f470be46abd9f97040e567864ad0b39835c9585e7f"
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
