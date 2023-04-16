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
/// Kubernetes v1.26.4
/// core.v1.AzureDiskVolumeSource
///

import Foundation

// MARK: - core.v1.AzureDiskVolumeSource

public extension core.v1 {

	///
	/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
	///
	struct AzureDiskVolumeSource: KubernetesResource {
		///
		/// kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
		///
		public var kind: String?
		///
		/// cachingMode is the Host Caching mode: None, Read Only, Read Write.
		///
		public var cachingMode: String?
		///
		/// diskName is the Name of the data disk in the blob storage
		///
		public var diskName: String
		///
		/// diskURI is the URI of data disk in the blob storage
		///
		public var diskURI: String
		///
		/// fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
		///
		public var fsType: String?
		///
		/// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String? = nil,
			cachingMode: String? = nil,
			diskName: String,
			diskURI: String,
			fsType: String? = nil,
			readOnly: Bool? = nil
		) {
			self.kind = kind
			self.cachingMode = cachingMode
			self.diskName = diskName
			self.diskURI = diskURI
			self.fsType = fsType
			self.readOnly = readOnly
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.AzureDiskVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case cachingMode = "cachingMode"
		case diskName = "diskName"
		case diskURI = "diskURI"
		case fsType = "fsType"
		case readOnly = "readOnly"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decodeIfPresent(String.self, forKey: .kind)
		self.cachingMode = try container.decodeIfPresent(String.self, forKey: .cachingMode)
		self.diskName = try container.decode(String.self, forKey: .diskName)
		self.diskURI = try container.decode(String.self, forKey: .diskURI)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(cachingMode, forKey: .cachingMode)
		try encodingContainer.encode(diskName, forKey: .diskName)
		try encodingContainer.encode(diskURI, forKey: .diskURI)
		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
	}
}
