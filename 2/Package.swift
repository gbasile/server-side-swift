// swift-tools-version:5.0.0
import PackageDescription

let package = Package(
    name: "monolith",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.8.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.9.0"),
        .package(url: "https://github.com/IBM-Swift/Kitura-Credentials.git", from: "2.4.1"),
        .package(url: "https://github.com/IBM-Swift/Kitura-CredentialsHTTP.git", from: "2.1.3"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-Crypto.git", from: "3.2.0")
    ],
    targets: [
        .target(
            name: "monolith",
            dependencies: [
                "Kitura", 
                "HeliumLogger", 
                "Credentials", 
                "CredentialsHTTP", 
                "PerfectCrypto"
            ])
    ]
)
