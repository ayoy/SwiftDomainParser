// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "DomainParser",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "DomainParser",
            targets: ["DomainParser"]),
        ],
        dependencies: [],
        targets: [
            .target(
                name: "DomainParser",
                dependencies: [],
                path: "DomainParser/DomainParser",
                exclude: ["Info.plist"]
            ),
            .testTarget(
                name: "DomainParserTests",
                dependencies: ["DomainParser"],
                path: "DomainParser/DomainParserTests",
                exclude: ["Info.plist"],
                resources: [.copy("public_suffix_list.dat")]
            )
        ]
    )
