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
	/// DownwardAPIVolumeFile represents information to create the file containing the pod field
	///
	struct DownwardAPIVolumeFile: KubernetesResource {
		///
		/// Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
		///
		public var fieldRef: core.v1.ObjectFieldSelector?
		///
		/// Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
		///
		public var mode: Int32?
		///
		/// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
		///
		public var path: String
		///
		/// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
		///
		public var resourceFieldRef: core.v1.ResourceFieldSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			fieldRef: core.v1.ObjectFieldSelector?, 
			mode: Int32?, 
			path: String, 
			resourceFieldRef: core.v1.ResourceFieldSelector?
		) {
			self.fieldRef = fieldRef
			self.mode = mode
			self.path = path
			self.resourceFieldRef = resourceFieldRef
		}
	}
}

