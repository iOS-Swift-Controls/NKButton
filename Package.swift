// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NKButton",
	platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "NKButton",
            targets: ["NKButton"]),
    ],
    dependencies: [
		.package(url: "https://github.com/kennic/FrameLayoutKit.git", .branch("master")),
		.package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", .upToNextMajor(from: "4.8.0")),
    ],
    targets: [
        .target(
            name: "NKButton",
            dependencies: ["FrameLayoutKit", "NVActivityIndicatorView"],
			path: "NKButton/CLasses",
			exclude: ["Example"])
    ]
)
