// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "TBX",
    products: [
        .library(name: "TBX", targets: ["TBX"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.8.2")),
        .package(url: "https://github.com/antitypical/Result.git", .exact("4.1.0")),
    ],
    targets: [
        .target(name: "TBX", dependencies: [
          "Alamofire",
          "Result",
        ], path: "Sources")
    ]
)
