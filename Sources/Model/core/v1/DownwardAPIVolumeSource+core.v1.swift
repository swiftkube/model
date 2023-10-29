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
/// Kubernetes v1.28.3
/// core.v1.DownwardAPIVolumeSource
///

import Foundation

// MARK: - core.v1.DownwardAPIVolumeSource

public extension core.v1 {

	///
	/// DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
	///
	struct DownwardAPIVolumeSource: KubernetesResource {
		///
		/// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
		///
		public var defaultMode: Int32?
		///
		/// Items is a list of downward API volume file
		///
		public var items: [core.v1.DownwardAPIVolumeFile]?
		///
		/// Default memberwise initializer
		///
		public init(
			defaultMode: Int32? = nil,
			items: [core.v1.DownwardAPIVolumeFile]? = nil
		) {
			self.defaultMode = defaultMode
			self.items = items
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.DownwardAPIVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case defaultMode = "defaultMode"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.defaultMode = try container.decodeIfPresent(Int32.self, forKey: .defaultMode)
		self.items = try container.decodeIfPresent([core.v1.DownwardAPIVolumeFile].self, forKey: .items)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(defaultMode, forKey: .defaultMode)
		try encodingContainer.encode(items, forKey: .items)
	}
}
