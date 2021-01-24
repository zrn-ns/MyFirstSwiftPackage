// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MyFirstSwiftPackage",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "MyFirstSwiftPackage",
            targets: ["MyFirstSwiftPackage"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MyFirstSwiftPackage",
            dependencies: []),
        .testTarget(
            name: "MyFirstSwiftPackageTests",
            dependencies: ["MyFirstSwiftPackage"]),
    ]
)
