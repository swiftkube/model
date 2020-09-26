//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

public extension core.v1 {

	///
	/// ScaleIOVolumeSource represents a persistent ScaleIO volume
	///
	struct ScaleIOVolumeSource: KubernetesResource {
		///
		/// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
		///
		public var fsType: String?
		///
		/// The host address of the ScaleIO API Gateway.
		///
		public var gateway: String
		///
		/// The name of the ScaleIO Protection Domain for the configured storage.
		///
		public var protectionDomain: String?
		///
		/// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
		///
		public var secretRef: core.v1.LocalObjectReference
		///
		/// Flag to enable/disable SSL communication with Gateway, default false
		///
		public var sslEnabled: Bool?
		///
		/// Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
		///
		public var storageMode: String?
		///
		/// The ScaleIO Storage Pool associated with the protection domain.
		///
		public var storagePool: String?
		///
		/// The name of the storage system as configured in ScaleIO.
		///
		public var system: String
		///
		/// The name of a volume already created in the ScaleIO system that is associated with this volume source.
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
			secretRef: core.v1.LocalObjectReference,
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
extension core.v1.ScaleIOVolumeSource {

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

}

