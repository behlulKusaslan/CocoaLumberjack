// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CocoaLumberjack",
  products: [
    .library(
      name: "CocoaLumberjack",
      targets: ["CocoaLumberjack", "CocoaLumberjackObjc"]
    ),
  ],
  targets: [
    .target(
      name: "CocoaLumberjack",
      dependencies: ["CocoaLumberjackObjc"]
    ),
    .target(
      name: "CocoaLumberjackObjc",
      dependencies: [],
      publicHeadersPath: "include"
    ),
    .testTarget(
      name: "CocoaLumberjackTests",
      dependencies: ["CocoaLumberjack"]),
  ]
)
