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
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.1/XrayKit.xcframework.zip",
      checksum: "ce4f17df515a95230bbfd2c81e8fa047938bce1e95842b5517abf7a53aeab712"
    )
  ]
)
