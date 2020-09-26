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
	/// Represents a projected volume source
	///
	struct ProjectedVolumeSource: KubernetesResource {
		///
		/// Mode bits to use on created files by default. Must be a value between 0 and 0777. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
		///
		public var defaultMode: Int32?
		///
		/// list of volume projections
		///
		public var sources: [core.v1.VolumeProjection]
		///
		/// Default memberwise initializer
		///
		public init(
			defaultMode: Int32? = nil,
			sources: [core.v1.VolumeProjection]
		) {
			self.defaultMode = defaultMode
			self.sources = sources
		}
	}
}

///
/// Codable conformance
///
extension core.v1.ProjectedVolumeSource {

	private enum CodingKeys: String, CodingKey {
		case defaultMode = "defaultMode"
		case sources = "sources"
	}

}

