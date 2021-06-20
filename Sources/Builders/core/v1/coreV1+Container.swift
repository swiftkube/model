//
// Copyright 2020 Swiftkube Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

public extension sk {

	static func container(name: String, _ block: (inout core.v1.Container) -> Void) -> core.v1.Container {
		build(core.v1.Container(name: name), with: block)
	}

	static func containerPort(_ port: Int32, _ block: ((inout core.v1.ContainerPort) -> Void)? = nil) -> core.v1.ContainerPort {
		build(core.v1.ContainerPort(containerPort: port), with: block ?? { _ in })
	}

	static func envFrom(_ sources: ContainerEnvFromSourceType...) -> [core.v1.EnvFromSource] {
		sources.map { $0.envFromSource() }
	}

	static func probe(action: ProbeAction, _ block: ((inout core.v1.Probe) -> Void)? = nil) -> core.v1.Probe {
		var probe = core.v1.Probe()
		block?(&probe)

		switch action {
		case let .exec(command: command):
			probe.exec = core.v1.ExecAction(command: command)
		case let .httpGet(scheme: scheme, host: host, path: path, port: port, headers: headersMap):
			let headers = headersMap?.map { key, value -> core.v1.HTTPHeader in
				core.v1.HTTPHeader(name: key, value: value)
			}
			probe.httpGet = core.v1.HTTPGetAction(
				host: host,
				httpHeaders: headers,
				path: path,
				port: IntOrString(integerLiteral: port),
				scheme: scheme
			)
		case let .tcpSocket(port: port, host: host):
			probe.tcpSocket = core.v1.TCPSocketAction(host: host, port: IntOrString(integerLiteral: port))
		}

		return probe
	}

	static func requirements(_ block: (inout core.v1.ResourceRequirements) -> Void) -> core.v1.ResourceRequirements {
		build(core.v1.ResourceRequirements(), with: block)
	}

	static func volumeMount(name: String, mountPath: String, _ block: ((inout core.v1.VolumeMount) -> Void)? = nil) -> core.v1.VolumeMount {
		build(core.v1.VolumeMount(mountPath: mountPath, name: name), with: block ?? { _ in })
	}

	static func volumeDevice(name: String, devicePath: String) -> core.v1.VolumeDevice {
		core.v1.VolumeDevice(devicePath: devicePath, name: name)
	}
}

// MARK: - ContainerEnvVarType

public enum ContainerEnvVarType {
	case value(String)
	case configMapRef(name: String, key: String, optional: Bool = false)
	case secretRef(name: String, key: String, optional: Bool = false)
	case fieldRef(fieldPath: String, apiVertsion: String? = "v1")
	case resourceFieldRef(containerName: String? = nil, resource: String, divisor: Quantity? = 1)

	func envVar(withName name: String) -> core.v1.EnvVar {
		switch self {
		case let .value(stringValue):
			return core.v1.EnvVar(name: name, value: stringValue)
		case let .configMapRef(name: name, key: key, optional: optional):
			let selector = core.v1.ConfigMapKeySelector(key: key, name: name, optional: optional)
			let ref = core.v1.EnvVarSource(configMapKeyRef: selector)
			return core.v1.EnvVar(name: name, valueFrom: ref)
		case let .secretRef(name: name, key: key, optional: optional):
			let selector = core.v1.SecretKeySelector(key: key, name: name, optional: optional)
			let ref = core.v1.EnvVarSource(secretKeyRef: selector)
			return core.v1.EnvVar(name: name, valueFrom: ref)
		case let .fieldRef(fieldPath: path, apiVertsion: version):
			let selector = core.v1.ObjectFieldSelector(apiVersion: version, fieldPath: path)
			let ref = core.v1.EnvVarSource(fieldRef: selector)
			return core.v1.EnvVar(name: name, valueFrom: ref)
		case let .resourceFieldRef(containerName: containerName, resource: resource, divisor: divisor):
			let selector = core.v1.ResourceFieldSelector(containerName: containerName, divisor: divisor, resource: resource)
			let ref = core.v1.EnvVarSource(resourceFieldRef: selector)
			return core.v1.EnvVar(name: name, valueFrom: ref)
		}
	}
}

// MARK: - ContainerEnvFromSourceType

public enum ContainerEnvFromSourceType {
	case configMapRef(name: String, prefix: String? = nil, optional: Bool = false)
	case secretRef(name: String, prefix: String? = nil, optional: Bool = false)

	func envFromSource() -> core.v1.EnvFromSource {
		switch self {
		case let .configMapRef(name: name, prefix: prefix, optional: optional):
			let ref = core.v1.ConfigMapEnvSource(name: name, optional: optional)
			return core.v1.EnvFromSource(configMapRef: ref, prefix: prefix, secretRef: nil)
		case let .secretRef(name: name, prefix: prefix, optional: optional):
			let ref = core.v1.SecretEnvSource(name: name, optional: optional)
			return core.v1.EnvFromSource(configMapRef: nil, prefix: prefix, secretRef: ref)
		}
	}
}

// MARK: - ProbeAction

public enum ProbeAction {
	case exec(command: [String])
	case httpGet(scheme: String? = nil, host: String? = nil, path: String, port: Int, headers: [String: String]? = nil)
	case tcpSocket(port: Int, host: String? = nil)
}

// MARK: - Array + ExpressibleByDictionaryLiteral

extension Array: ExpressibleByDictionaryLiteral where Array.Element == core.v1.EnvVar {

	public init(dictionaryLiteral elements: (String, ContainerEnvVarType)...) {
		self = elements.map { name, value -> core.v1.EnvVar in
			value.envVar(withName: name.uppercased())
		}
	}
}

public extension core.v1.Container {

	mutating func mount(volume: core.v1.Volume, on path: String) {
		if volumeMounts == nil {
			volumeMounts = []
		}
		let volumeMount = sk.volumeMount(name: volume.name, mountPath: path)
		volumeMounts?.append(volumeMount)
	}

	mutating func mount(volume: String, on path: String) {
		if volumeMounts == nil {
			volumeMounts = []
		}
		let volumeMount = sk.volumeMount(name: volume, mountPath: path)
		volumeMounts?.append(volumeMount)
	}
}
