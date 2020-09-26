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
	/// Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
	///
	struct EmptyDirVolumeSource: KubernetesResource {
		///
		/// What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
		///
		public var medium: String?
		///
		/// Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir
		///
		public var sizeLimit: Quantity?
		///
		/// Default memberwise initializer
		///
		public init(
			medium: String? = nil,
			sizeLimit: Quantity? = nil
		) {
			self.medium = medium
			self.sizeLimit = sizeLimit
		}
	}
}

///
/// Codable conformance
///
extension core.v1.EmptyDirVolumeSource {

	private enum CodingKeys: String, CodingKey {
		case medium = "medium"
		case sizeLimit = "sizeLimit"
	}

}

