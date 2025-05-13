// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "XrayKit",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "XrayKit", targets: ["XrayKit"])
  ],
  targets: [
    .binaryTarget(
      name: "XrayKit",
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.5/XrayKit.xcframework.zip",
      checksum: "e4fa7b10a910c0f31c7295119e38e3c1c19bbac546f9ea22f619b2c84c780e4a"
    )
  ]
)
