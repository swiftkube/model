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
/// core.v1.HostPathVolumeSource
///

import Foundation

// MARK: - core.v1.HostPathVolumeSource

public extension core.v1 {

	///
	/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
	///
	struct HostPathVolumeSource: KubernetesResource {
		///
		/// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
		///
		public var path: String
		///
		/// type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			path: String,
			type: String? = nil
		) {
			self.path = path
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.HostPathVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case path = "path"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.path = try container.decode(String.self, forKey: .path)
		self.type = try container.decodeIfPresent(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(path, forKey: .path)
		try encodingContainer.encode(type, forKey: .type)
	}
}
