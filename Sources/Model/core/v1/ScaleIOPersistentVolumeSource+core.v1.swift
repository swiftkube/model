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
/// Kubernetes v1.32.0
/// core.v1.ScaleIOPersistentVolumeSource
///

import Foundation

// MARK: - core.v1.ScaleIOPersistentVolumeSource

public extension core.v1 {

	///
	/// ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
	///
	struct ScaleIOPersistentVolumeSource: KubernetesResource {
		///
		/// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
		///
		public var fsType: String?
		///
		/// gateway is the host address of the ScaleIO API Gateway.
		///
		public var gateway: String
		///
		/// protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
		///
		public var protectionDomain: String?
		///
		/// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
		///
		public var secretRef: core.v1.SecretReference
		///
		/// sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
		///
		public var sslEnabled: Bool?
		///
		/// storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
		///
		public var storageMode: String?
		///
		/// storagePool is the ScaleIO Storage Pool associated with the protection domain.
		///
		public var storagePool: String?
		///
		/// system is the name of the storage system as configured in ScaleIO.
		///
		public var system: String
		///
		/// volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
		///
		public var volumeName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			gateway: String,
			protectionDomain: String? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.SecretReference,
			sslEnabled: Bool? = nil,
			storageMode: String? = nil,
			storagePool: String? = nil,
			system: String,
			volumeName: String? = nil
		) {
			self.fsType = fsType
			self.gateway = gateway
			self.protectionDomain = protectionDomain
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.sslEnabled = sslEnabled
			self.storageMode = storageMode
			self.storagePool = storagePool
			self.system = system
			self.volumeName = volumeName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ScaleIOPersistentVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case gateway = "gateway"
		case protectionDomain = "protectionDomain"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
		case sslEnabled = "sslEnabled"
		case storageMode = "storageMode"
		case storagePool = "storagePool"
		case system = "system"
		case volumeName = "volumeName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.gateway = try container.decode(String.self, forKey: .gateway)
		self.protectionDomain = try container.decodeIfPresent(String.self, forKey: .protectionDomain)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretRef = try container.decode(core.v1.SecretReference.self, forKey: .secretRef)
		self.sslEnabled = try container.decodeIfPresent(Bool.self, forKey: .sslEnabled)
		self.storageMode = try container.decodeIfPresent(String.self, forKey: .storageMode)
		self.storagePool = try container.decodeIfPresent(String.self, forKey: .storagePool)
		self.system = try container.decode(String.self, forKey: .system)
		self.volumeName = try container.decodeIfPresent(String.self, forKey: .volumeName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(gateway, forKey: .gateway)
		try encodingContainer.encode(protectionDomain, forKey: .protectionDomain)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(secretRef, forKey: .secretRef)
		try encodingContainer.encode(sslEnabled, forKey: .sslEnabled)
		try encodingContainer.encode(storageMode, forKey: .storageMode)
		try encodingContainer.encode(storagePool, forKey: .storagePool)
		try encodingContainer.encode(system, forKey: .system)
		try encodingContainer.encode(volumeName, forKey: .volumeName)
	}
}
