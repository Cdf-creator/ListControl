// swift-tools-version:5.3

import Foundation
import PackageDescription

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
  name: "ListControl",
  platforms: [
    .macOS(.v10_14)
  ],
  products: [
    .library(
      name: "ListControl",
      type: .static,
      targets: [
        "ListControl"
      ]
    )
  ],
  dependencies: [
    .package(
      name: "ScadeExtensions", url: "https://github.com/scade-platform/ScadeExtensions",
      .branch("main"))
  ],
  targets: [
    .target(
      name: "ListControl",
      dependencies: ["ScadeExtensions"],
      exclude: ["main.page"],
      swiftSettings: [
        .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
        .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android])),
      ]
    )
  ]
)
