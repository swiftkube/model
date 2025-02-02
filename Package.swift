// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftkubeModel",
	platforms: [
		.macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v5)
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
