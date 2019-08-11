// swift-tools-version:4.2
// swift-tools-version declares minimum Swift version to build this package.
// Syntax: '// swift-tools-version:<specifier>' on the 1st line. (4.2|5.0)
import PackageDescription

let package = Package(
    name: "OSKWebAPI",
    products: [
        .library(name: "OSKWebAPI", targets: ["App"]),
    ],
    dependencies: [
        // A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ],
    swiftLanguageVersions: [.v4_2] // [.v4_2, .v5]
)
