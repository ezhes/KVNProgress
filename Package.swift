// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "KVNProgress",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KVNProgress",
            targets: ["KVNProgress"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "KVNProgress",
            path: "./KVNProgress",
            exclude: [
                "KVNProgress-Info.plist",
                "KVNProgress-Prefix.pch",
                "main.m",
                "Demo"
            ],
            resources: [
                .process("Resources/KVNProgressView.xib"),
            ],
            publicHeadersPath: "Classes",
            cSettings: [
                .headerSearchPath("Categories"),
                .headerSearchPath("Classes"),
            ]
        )
    ]
)

