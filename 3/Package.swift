// swift-tools-version:5.0.0
import PackageDescription

let package = Package(
    name: "ActivitiesService",

    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.7.2"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.9.0"),
        .package(url: "https://github.com/nicholasjackson/swift-mysql.git", from: "1.9.1"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0")
    ],
    targets: [
        .target(name: "ActivitiesService", dependencies: ["Kitura", "HeliumLogger", "MySQL", "SwiftyJSON"]),
        .target(name: "ActivitiesServer", dependencies: ["ActivitiesService"])
    ]
)
