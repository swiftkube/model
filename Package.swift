// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftkubeModel",
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
		)
	]
)
