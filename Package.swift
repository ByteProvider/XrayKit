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
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.4/XrayKit.xcframework.zip",
      checksum: "6b3cad13480a5c580e300455b9c6c2f308d0f5f5be768aac89cc79e5416d7396"
    )
  ]
)
