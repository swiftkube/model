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
/// Kubernetes v1.22.7
/// core.v1.ServiceAccountTokenProjection
///

import Foundation

public extension core.v1 {

	///
	/// ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
	///
	struct ServiceAccountTokenProjection: KubernetesResource {
		///
		/// Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
		///
		public var audience: String?
		///
		/// ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
		///
		public var expirationSeconds: Int64?
		///
		/// Path is the path relative to the mount point of the file to project the token into.
		///
		public var path: String
		///
		/// Default memberwise initializer
		///
		public init(
			audience: String? = nil,
			expirationSeconds: Int64? = nil,
			path: String
		) {
			self.audience = audience
			self.expirationSeconds = expirationSeconds
			self.path = path
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ServiceAccountTokenProjection {

	private enum CodingKeys: String, CodingKey {

		case audience = "audience"
		case expirationSeconds = "expirationSeconds"
		case path = "path"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.audience = try container.decodeIfPresent(String.self, forKey: .audience)
		self.expirationSeconds = try container.decodeIfPresent(Int64.self, forKey: .expirationSeconds)
		self.path = try container.decode(String.self, forKey: .path)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(audience, forKey: .audience)
		try encodingContainer.encode(expirationSeconds, forKey: .expirationSeconds)
		try encodingContainer.encode(path, forKey: .path)
	}
}
