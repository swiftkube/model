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
/// core.v1.CephFSVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
	///
	struct CephFSVolumeSource: KubernetesResource {
		///
		/// Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
		///
		public var monitors: [String]
		///
		/// Optional: Used as the mounted root, rather than the full Ceph tree, default is /
		///
		public var path: String?
		///
		/// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
		///
		public var readOnly: Bool?
		///
		/// Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
		///
		public var secretFile: String?
		///
		/// Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
		///
		public var user: String?
		///
		/// Default memberwise initializer
		///
		public init(
			monitors: [String],
			path: String? = nil,
			readOnly: Bool? = nil,
			secretFile: String? = nil,
			secretRef: core.v1.LocalObjectReference? = nil,
			user: String? = nil
		) {
			self.monitors = monitors
			self.path = path
			self.readOnly = readOnly
			self.secretFile = secretFile
			self.secretRef = secretRef
			self.user = user
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.CephFSVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case monitors = "monitors"
		case path = "path"
		case readOnly = "readOnly"
		case secretFile = "secretFile"
		case secretRef = "secretRef"
		case user = "user"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.monitors = try container.decode([String].self, forKey: .monitors)
		self.path = try container.decodeIfPresent(String.self, forKey: .path)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretFile = try container.decodeIfPresent(String.self, forKey: .secretFile)
		self.secretRef = try container.decodeIfPresent(core.v1.LocalObjectReference.self, forKey: .secretRef)
		self.user = try container.decodeIfPresent(String.self, forKey: .user)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(monitors, forKey: .monitors)
		try container.encode(path, forKey: .path)
		try container.encode(readOnly, forKey: .readOnly)
		try container.encode(secretFile, forKey: .secretFile)
		try container.encode(secretRef, forKey: .secretRef)
		try container.encode(user, forKey: .user)
	}
}
