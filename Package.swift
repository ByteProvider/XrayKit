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
      url: "https://github.com/CodeWithTamim/XrayKit/releases/download/1.0.3/XrayKit.xcframework.zip",
      checksum: "82aa8670065236d870b3b4838c4dca4a4ddc004794205fb845ab346816b63d9b"
    )
  ]
)
