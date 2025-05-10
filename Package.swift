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
      checksum: "0d9facc797d7170ad4b54916279bab0ca4514e5481612671c021f1d1526e634d"
    )
  ]
)
