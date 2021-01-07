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
/// policy.v1beta1.AllowedHostPath
///

import Foundation

public extension policy.v1beta1 {

	///
	/// AllowedHostPath defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined.
	///
	struct AllowedHostPath: KubernetesResource {
		///
		/// pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.
		///
		/// Examples: `/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`
		///
		public var pathPrefix: String?
		///
		/// when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly.
		///
		public var readOnly: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			pathPrefix: String? = nil,
			readOnly: Bool? = nil
		) {
			self.pathPrefix = pathPrefix
			self.readOnly = readOnly
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1beta1.AllowedHostPath {

	private enum CodingKeys: String, CodingKey {

		case pathPrefix = "pathPrefix"
		case readOnly = "readOnly"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.pathPrefix = try container.decodeIfPresent(String.self, forKey: .pathPrefix)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(pathPrefix, forKey: .pathPrefix)
		try container.encode(readOnly, forKey: .readOnly)
	}
}
