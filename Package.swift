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
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.0/XrayKit.xcframework.zip",
      checksum: "ea55ce8fdda721bcb843233124e7d0a8f9259aba78d5da3421e40e7075956108"
    )
  ]
)
