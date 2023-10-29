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
/// storage.v1.TokenRequest
///

import Foundation

// MARK: - storage.v1.TokenRequest

public extension storage.v1 {

	///
	/// TokenRequest contains parameters of a service account token.
	///
	struct TokenRequest: KubernetesResource {
		///
		/// audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
		///
		public var audience: String
		///
		/// expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
		///
		public var expirationSeconds: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			audience: String,
			expirationSeconds: Int64? = nil
		) {
			self.audience = audience
			self.expirationSeconds = expirationSeconds
		}
	}
}

///
/// Codable conformance
///
public extension storage.v1.TokenRequest {

	private enum CodingKeys: String, CodingKey {

		case audience = "audience"
		case expirationSeconds = "expirationSeconds"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.audience = try container.decode(String.self, forKey: .audience)
		self.expirationSeconds = try container.decodeIfPresent(Int64.self, forKey: .expirationSeconds)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(audience, forKey: .audience)
		try encodingContainer.encode(expirationSeconds, forKey: .expirationSeconds)
	}
}
