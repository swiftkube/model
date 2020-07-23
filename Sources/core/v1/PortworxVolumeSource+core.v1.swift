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
	/// PortworxVolumeSource represents a Portworx volume resource.
	///
	struct PortworxVolumeSource: KubernetesResource {
		///
		/// FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
		///
		public var fsType: String?
		///
		/// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// VolumeID uniquely identifies a Portworx volume
		///
		public var volumeID: String
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String?, 
			readOnly: Bool?, 
			volumeID: String
		) {
			self.fsType = fsType
			self.readOnly = readOnly
			self.volumeID = volumeID
		}
	}
}

