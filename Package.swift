// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftkubeModel",
	platforms: [
		.macOS(.v10_12), .iOS(.v12), .tvOS(.v12), .watchOS(.v5)
	],
	products: [
		.library(
			name: "SwiftkubeModel",
			targets: ["SwiftkubeModel"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.0"),
	],
	targets: [
		.target(
			name: "SwiftkubeModel",
			dependencies: [
				.product(name: "AnyCodable", package: "AnyCodable")
			],
			path: "Sources"
		),
		.testTarget(
			name: "SwiftkubeModelTests",
			dependencies: [
				"SwiftkubeModel"
		]),
	]
)
