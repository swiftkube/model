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
/// core.v1.AWSElasticBlockStoreVolumeSource
///

import Foundation

// MARK: - core.v1.AWSElasticBlockStoreVolumeSource

public extension core.v1 {

	///
	/// Represents a Persistent Disk resource in AWS.
	///
	/// An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
	///
	struct AWSElasticBlockStoreVolumeSource: KubernetesResource {
		///
		/// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
		///
		public var fsType: String?
		///
		/// partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).
		///
		public var partition: Int32?
		///
		/// readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
		///
		public var readOnly: Bool?
		///
		/// volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
		///
		public var volumeID: String
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			partition: Int32? = nil,
			readOnly: Bool? = nil,
			volumeID: String
		) {
			self.fsType = fsType
			self.partition = partition
			self.readOnly = readOnly
			self.volumeID = volumeID
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.AWSElasticBlockStoreVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case partition = "partition"
		case readOnly = "readOnly"
		case volumeID = "volumeID"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.partition = try container.decodeIfPresent(Int32.self, forKey: .partition)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.volumeID = try container.decode(String.self, forKey: .volumeID)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(partition, forKey: .partition)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(volumeID, forKey: .volumeID)
	}
}
