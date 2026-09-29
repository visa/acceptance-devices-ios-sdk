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
            url: "https://repo.visa.com/mpos-releases/io/payworks/ttp-thinclient-ios-release/26.04.11/ttp-thinclient-ios-release-26.04.11.zip",
            checksum: "d47371acb98416432e0577414caa06ba59631da93b9ee8551cc2bab8633eb34f"
        ),

        .binaryTarget(
            name: "AuthModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.AuthModule/3.9.0/com.visa.AuthModule-3.9.0.zip",
            checksum: "9609ea64dc4031053fc518e44c765ce3f1031123f6f3f5dd221ca600999e7778"
        ),

        .binaryTarget(
            name: "CoreModule",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.CoreModule/3.9.0/com.visa.CoreModule-3.9.0.zip",
            checksum: "fd085bc7b1b4177346fa014c7783d39321cd4e1eccc15129c1fe8a77bc5018f3"
        ),

        .binaryTarget(
            name: "TapToPhone",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.TapToPhone/3.9.0/com.visa.TapToPhone-3.9.0.zip",
            checksum: "7842d87ac68e8fdb2e516b0d40ddcfaabaff20a7402f7e8d1377b91f809125a7"
        ),

        .binaryTarget(
            name: "DefaultUI",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.DefaultUI/3.9.0/com.visa.DefaultUI-3.9.0.zip",
            checksum: "6b6f28e96071268de7bc63e70c41640acba34a2f3c041d09e9e206834a3ccbde"
        ),

        .binaryTarget(
            name: "m-sensory-branding",
            url: "https://repo.visa.com/mpos-releases/io/payworks/m-sensory-branding-iOS/3.2.0/m-sensory-branding-iOS-3.2.0.zip",
            checksum: "a88db7dc8fe6f6b01d125ed0f13e793c3fa7a231b39b998f72fcf6a670d40d4d"
        ),

        .binaryTarget(
            name: "IOSDesignSystem",
            url: "https://repo.visa.com/mpos-releases/io/payworks/com.visa.ios.designsystem/1.2.0/com.visa.ios.designsystem-1.2.0.zip",
            checksum: "c8db4b6d37df5e447c9816053507b5314446ecec90e6b87ab3fc3848015dc084"
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
