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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// core.v1.NodeSystemInfo
///

import Foundation

public extension core.v1 {

	///
	/// NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
	///
	struct NodeSystemInfo: KubernetesResource {
		///
		/// The Architecture reported by the node
		///
		public var architecture: String
		///
		/// Boot ID reported by the node.
		///
		public var bootID: String
		///
		/// ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
		///
		public var containerRuntimeVersion: String
		///
		/// Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
		///
		public var kernelVersion: String
		///
		/// KubeProxy Version reported by the node.
		///
		public var kubeProxyVersion: String
		///
		/// Kubelet Version reported by the node.
		///
		public var kubeletVersion: String
		///
		/// MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
		///
		public var machineID: String
		///
		/// The Operating System reported by the node
		///
		public var operatingSystem: String
		///
		/// OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
		///
		public var osImage: String
		///
		/// SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html
		///
		public var systemUUID: String
		///
		/// Default memberwise initializer
		///
		public init(
			architecture: String,
			bootID: String,
			containerRuntimeVersion: String,
			kernelVersion: String,
			kubeProxyVersion: String,
			kubeletVersion: String,
			machineID: String,
			operatingSystem: String,
			osImage: String,
			systemUUID: String
		) {
			self.architecture = architecture
			self.bootID = bootID
			self.containerRuntimeVersion = containerRuntimeVersion
			self.kernelVersion = kernelVersion
			self.kubeProxyVersion = kubeProxyVersion
			self.kubeletVersion = kubeletVersion
			self.machineID = machineID
			self.operatingSystem = operatingSystem
			self.osImage = osImage
			self.systemUUID = systemUUID
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeSystemInfo {

	private enum CodingKeys: String, CodingKey {

		case architecture = "architecture"
		case bootID = "bootID"
		case containerRuntimeVersion = "containerRuntimeVersion"
		case kernelVersion = "kernelVersion"
		case kubeProxyVersion = "kubeProxyVersion"
		case kubeletVersion = "kubeletVersion"
		case machineID = "machineID"
		case operatingSystem = "operatingSystem"
		case osImage = "osImage"
		case systemUUID = "systemUUID"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.architecture = try container.decode(String.self, forKey: .architecture)
		self.bootID = try container.decode(String.self, forKey: .bootID)
		self.containerRuntimeVersion = try container.decode(String.self, forKey: .containerRuntimeVersion)
		self.kernelVersion = try container.decode(String.self, forKey: .kernelVersion)
		self.kubeProxyVersion = try container.decode(String.self, forKey: .kubeProxyVersion)
		self.kubeletVersion = try container.decode(String.self, forKey: .kubeletVersion)
		self.machineID = try container.decode(String.self, forKey: .machineID)
		self.operatingSystem = try container.decode(String.self, forKey: .operatingSystem)
		self.osImage = try container.decode(String.self, forKey: .osImage)
		self.systemUUID = try container.decode(String.self, forKey: .systemUUID)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(architecture, forKey: .architecture)
		try container.encode(bootID, forKey: .bootID)
		try container.encode(containerRuntimeVersion, forKey: .containerRuntimeVersion)
		try container.encode(kernelVersion, forKey: .kernelVersion)
		try container.encode(kubeProxyVersion, forKey: .kubeProxyVersion)
		try container.encode(kubeletVersion, forKey: .kubeletVersion)
		try container.encode(machineID, forKey: .machineID)
		try container.encode(operatingSystem, forKey: .operatingSystem)
		try container.encode(osImage, forKey: .osImage)
		try container.encode(systemUUID, forKey: .systemUUID)
	}
}
