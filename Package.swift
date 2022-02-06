// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "EnvironmentTestWebService",
    platforms: [.macOS(.v11)],
    dependencies: [
        .package(url: "https://github.com/Apodini/Apodini.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "EnvironmentTestWebService",
            dependencies: [
                .product(name: "Apodini", package: "Apodini"),
                .product(name: "ApodiniHTTP", package: "Apodini")
            ]
        )
    ]
)
