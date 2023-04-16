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
/// core.v1.RBDVolumeSource
///

import Foundation

// MARK: - core.v1.RBDVolumeSource

public extension core.v1 {

	///
	/// Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
	///
	struct RBDVolumeSource: KubernetesResource {
		///
		/// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
		///
		public var fsType: String?
		///
		/// image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var image: String
		///
		/// keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var keyring: String?
		///
		/// monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var monitors: [String]
		///
		/// pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var pool: String?
		///
		/// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var readOnly: Bool?
		///
		/// secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
		///
		public var user: String?
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			image: String,
			keyring: String? = nil,
			monitors: [String],
			pool: String? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.LocalObjectReference? = nil,
			user: String? = nil
		) {
			self.fsType = fsType
			self.image = image
			self.keyring = keyring
			self.monitors = monitors
			self.pool = pool
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.user = user
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.RBDVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case image = "image"
		case keyring = "keyring"
		case monitors = "monitors"
		case pool = "pool"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
		case user = "user"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.image = try container.decode(String.self, forKey: .image)
		self.keyring = try container.decodeIfPresent(String.self, forKey: .keyring)
		self.monitors = try container.decode([String].self, forKey: .monitors)
		self.pool = try container.decodeIfPresent(String.self, forKey: .pool)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretRef = try container.decodeIfPresent(core.v1.LocalObjectReference.self, forKey: .secretRef)
		self.user = try container.decodeIfPresent(String.self, forKey: .user)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(image, forKey: .image)
		try encodingContainer.encode(keyring, forKey: .keyring)
		try encodingContainer.encode(monitors, forKey: .monitors)
		try encodingContainer.encode(pool, forKey: .pool)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(secretRef, forKey: .secretRef)
		try encodingContainer.encode(user, forKey: .user)
	}
}
