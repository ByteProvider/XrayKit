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
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.2/XrayKit.xcframework.zip",
      checksum: "ac444a49b5997affd2cd99949ab838af465c1c6a84f22f714e79938947b239fe"
    )
  ]
)
