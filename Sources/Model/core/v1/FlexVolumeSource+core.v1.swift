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
	/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
	///
	struct FlexVolumeSource: KubernetesResource {
		///
		/// Driver is the name of the driver to use for this volume.
		///
		public var driver: String
		///
		/// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
		///
		public var fsType: String?
		///
		/// Optional: Extra command options if any.
		///
		public var options: [String: String]?
		///
		/// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// Default memberwise initializer
		///
		public init(
			driver: String,
			fsType: String? = nil,
			options: [String: String]? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.LocalObjectReference? = nil
		) {
			self.driver = driver
			self.fsType = fsType
			self.options = options
			self.readOnly = readOnly
			self.secretRef = secretRef
		}
	}
}

///
/// Codable conformance
///
extension core.v1.FlexVolumeSource {

	private enum CodingKeys: String, CodingKey {
		case driver = "driver"
		case fsType = "fsType"
		case options = "options"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
	}

}

