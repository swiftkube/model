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
/// core.v1.CSIVolumeSource
///

import Foundation

// MARK: - core.v1.CSIVolumeSource

public extension core.v1 {

	///
	/// Represents a source location of a volume to mount, managed by an external CSI driver
	///
	struct CSIVolumeSource: KubernetesResource {
		///
		/// driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
		///
		public var driver: String
		///
		/// fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
		///
		public var fsType: String?
		///
		/// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
		///
		public var nodePublishSecretRef: core.v1.LocalObjectReference?
		///
		/// readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
		///
		public var readOnly: Bool?
		///
		/// volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
		///
		public var volumeAttributes: [String: String]?
		///
		/// Default memberwise initializer
		///
		public init(
			driver: String,
			fsType: String? = nil,
			nodePublishSecretRef: core.v1.LocalObjectReference? = nil,
			readOnly: Bool? = nil,
			volumeAttributes: [String: String]? = nil
		) {
			self.driver = driver
			self.fsType = fsType
			self.nodePublishSecretRef = nodePublishSecretRef
			self.readOnly = readOnly
			self.volumeAttributes = volumeAttributes
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.CSIVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case driver = "driver"
		case fsType = "fsType"
		case nodePublishSecretRef = "nodePublishSecretRef"
		case readOnly = "readOnly"
		case volumeAttributes = "volumeAttributes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.driver = try container.decode(String.self, forKey: .driver)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.nodePublishSecretRef = try container.decodeIfPresent(core.v1.LocalObjectReference.self, forKey: .nodePublishSecretRef)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.volumeAttributes = try container.decodeIfPresent([String: String].self, forKey: .volumeAttributes)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(driver, forKey: .driver)
		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(nodePublishSecretRef, forKey: .nodePublishSecretRef)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(volumeAttributes, forKey: .volumeAttributes)
	}
}
