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
	/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
	///
	struct CephFSPersistentVolumeSource: KubernetesResource {
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
		public var secretRef: core.v1.SecretReference?
		///
		/// Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
		///
		public var user: String?
		///
		/// Default memberwise initializer
		///
		public init(
			monitors: [String], 
			path: String?, 
			readOnly: Bool?, 
			secretFile: String?, 
			secretRef: core.v1.SecretReference?, 
			user: String?
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

