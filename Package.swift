// swift-tools-version:5.7

//
//  Package.swift
//  Workspace ONE Intelligence SDK
//
//  Copyright (c) 2023-2026 Omnissa, LLC. All rights reserved.
//  This product is protected by copyright and intellectual property laws in the
//  United States and other countries as well as by international treaties.
//  -- Omnissa Public
//

import PackageDescription

let package = Package(
    name: "WS1IntelligenceSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "WS1IntelligenceSDK",
            targets: ["OmnissaCryptoSDK", "WS1IntelligenceSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/euc-releases/ws1-crypto-sdk.git", from: "25.06.0")
    ],
    targets: [
        .binaryTarget(name: "WS1IntelligenceSDK", url: "https://github.com/euc-releases/ws1-intelligencesdk-sdk-ios/releases/download/26.5.0/WS1IntelligenceSDK.xcframework.zip", checksum: "6874d6cf363d3c02223da394e81356e39e6b1cdd69c6eb080eb2891197166e3a"),
        .target(name: "OmnissaCryptoSDK", dependencies: [.product(name: "WS1CryptoSDK", package: "ws1-crypto-sdk")])
    ]
)
