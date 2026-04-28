// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftkubeModel",
	platforms: [
		.macOS(.v13), .iOS(.v16), .tvOS(.v16), .watchOS(.v9)
	],
	products: [
		.library(
			name: "SwiftkubeModel",
			targets: ["SwiftkubeModel"]
		),
	],
	dependencies: [],
	targets: [
		.target(
			name: "SwiftkubeModel",
			dependencies: [],
			path: "Sources"
		),
		.testTarget(
			name: "SwiftkubeModelTests",
			dependencies: [
				"SwiftkubeModel"
		]),
	],
	swiftLanguageVersions: [.v5, .version("6")]
)
