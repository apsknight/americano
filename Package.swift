// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Americano",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "Americano", targets: ["Americano"])
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "Americano",
            dependencies: []
        )
    ]
) 