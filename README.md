# Swiftkube:Model

<p align="center">
	<img src="https://img.shields.io/badge/Swift-5.2-orange.svg" />
	<a href="https://v1-18.docs.kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/">
		<img src="https://img.shields.io/badge/Kubernetes-1.18.9-blue.svg" alt="Kubernetes 1.18.9"/>
	</a>
	<a href="https://swift.org/package-manager">
		<img src="https://img.shields.io/badge/swiftpm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
	</a>
		<img src="https://img.shields.io/badge/platforms-mac+linux-brightgreen.svg?style=flat" alt="Mac + Linux" />
</p>

## Table of contents

* [Overview](#overview)
* [Usage](#usage)
	* [Examples](#examples)
	* [Builders](#builders)
* [Installation](#installation)
* [License](#license)

## Overview

- [x] 

## Usage

To use the Kubernetes objects just import `SwiftkubeModel`: 

```swift
import SwiftkubeModel

let metadata = meta.v1.ObjectMatadata(name: "swiftkube")
let pod = core.v1.Pod(metadata: metadata)
```

All the objects are namespaced according to their API group and version, e.g. `apps.v1.Deployment` or `networking.v1beta1.Ingress`. Which means, that for example `rbac.v1.Role` and `rbac.v1beta1.Role` are completely different objects.

### Examples

Any Kubernetes object can be constructed directly using the model structs. Here is an example for a `Deployment` manifest:

```swift
let deployment = apps.v1.Deployment(
	metadata: meta.v1.ObjectMeta(
		name: "nginx"
	),
	spec: apps.v1.DeploymentSpec(
		replicas: 1,
		selector: meta.v1.LabelSelector(
			matchLabels: ["app": "nginx"]
		),
		template: core.v1.PodTemplateSpec (
			spec: core.v1.PodSpec(
				containers: [
					core.v1.Container(
						image: "nginx",
						name: "nginx",
					)
				]
			)
		)
	)
)
```

Here is a `ConfigMap`:

```swift
let configMap = core.v1.ConfigMap(
	metadata: meta.v1.ObjectMeta(
		name: "config"
	),
	data: [
		"env": "dev",
		"log_leve": "debug"
	]
)
```

A more complete example of a `Deployment`, that defines `Probes`, `ResourceRequirements`, `Volumes` and `VolumeMounts` would look something like this:

```swift
let deployment = apps.v1.Deployment(
	metadata: meta.v1.ObjectMeta(
		name: "opa",
		namespace: "default"
	),
	spec: apps.v1.DeploymentSpec(
		replicas: 2,
		selector: meta.v1.LabelSelector(
			matchLabels: ["app": "opa"]
		),
		template: core.v1.PodTemplateSpec (
			
			spec: core.v1.PodSpec(
				containers: [
					core.v1.Container(
						args: ["sleep", "100"],
						image: "openpolicyagent/opa",
						name: "opa",
						readinessProbe: core.v1.Probe(
							failureThreshold: 1,
							httpGet: core.v1.HTTPGetAction(
								path: "/health",
								port: 8080
							),
							initialDelaySeconds: 10,
							periodSeconds: 20,
							successThreshold: 2,
							timeoutSeconds: 5
						),
						resources: core.v1.ResourceRequirements(
							limits: [
								"ram": "512MB"
							],
							requests: [
								"ram": "128MB",
								"cpu": "200m",
							]
						),
						volumeMounts: [
							core.v1.VolumeMount(
								mountPath: "/etc/test",
								name: "data"
							)
						]
					)
				],
				imagePullSecrets: [
					core.v1.LocalObjectReference(name: "secret-name")
				],
				volumes: [
					core.v1.Volume(
						name: "data",
						persistentVolumeClaim: core.v1.PersistentVolumeClaimVolumeSource(
							claimName: "pvc",
							readOnly: true
						)
					)
				]
			)
		)
	)
)
```

### Builders




## Installation

To use the `SwiftkubeModel` in a SwiftPM project, add the following line to the dependencies in your `Package.swift` file:

```swift
.package(url: "https://github.com/swiftkube/model.git", from: "0.1.0"),
```

then include it as a dependency in your target:

```swift
import PackageDescription

let package = Package(
	// ...
	dependencies: [
		.package(url: "https://github.com/swiftkube/model.git", from: "0.1.0"),
	],
	targets: [
		.target(name: "<your-target>", dependencies: [
			.product(name: "SwiftkubeModel", package: "SwiftkubeModel"),
		])
    ]
)
```

Then run `swift build`.

## License

Swiftkube project is licensed under version 2.0 of the [Apache License](https://www.apache.org/licenses/LICENSE-2.0). See [LICENSE](./LICENSE) for more details.
