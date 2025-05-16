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
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.6/XrayKit.xcframework.zip",
      checksum: "8612604c63574302997cf084e4f706338d5a4e89529459a783ff08a84a8aca17"
    )
  ]
)
