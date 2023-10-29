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
/// core.v1.VolumeProjection
///

import Foundation

// MARK: - core.v1.VolumeProjection

public extension core.v1 {

	///
	/// Projection that may be projected along with other supported volume types
	///
	struct VolumeProjection: KubernetesResource {
		///
		/// configMap information about the configMap data to project
		///
		public var configMap: core.v1.ConfigMapProjection?
		///
		/// downwardAPI information about the downwardAPI data to project
		///
		public var downwardAPI: core.v1.DownwardAPIProjection?
		///
		/// secret information about the secret data to project
		///
		public var secret: core.v1.SecretProjection?
		///
		/// serviceAccountToken is information about the serviceAccountToken data to project
		///
		public var serviceAccountToken: core.v1.ServiceAccountTokenProjection?
		///
		/// Default memberwise initializer
		///
		public init(
			configMap: core.v1.ConfigMapProjection? = nil,
			downwardAPI: core.v1.DownwardAPIProjection? = nil,
			secret: core.v1.SecretProjection? = nil,
			serviceAccountToken: core.v1.ServiceAccountTokenProjection? = nil
		) {
			self.configMap = configMap
			self.downwardAPI = downwardAPI
			self.secret = secret
			self.serviceAccountToken = serviceAccountToken
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.VolumeProjection {

	private enum CodingKeys: String, CodingKey {

		case configMap = "configMap"
		case downwardAPI = "downwardAPI"
		case secret = "secret"
		case serviceAccountToken = "serviceAccountToken"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.configMap = try container.decodeIfPresent(core.v1.ConfigMapProjection.self, forKey: .configMap)
		self.downwardAPI = try container.decodeIfPresent(core.v1.DownwardAPIProjection.self, forKey: .downwardAPI)
		self.secret = try container.decodeIfPresent(core.v1.SecretProjection.self, forKey: .secret)
		self.serviceAccountToken = try container.decodeIfPresent(core.v1.ServiceAccountTokenProjection.self, forKey: .serviceAccountToken)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(configMap, forKey: .configMap)
		try encodingContainer.encode(downwardAPI, forKey: .downwardAPI)
		try encodingContainer.encode(secret, forKey: .secret)
		try encodingContainer.encode(serviceAccountToken, forKey: .serviceAccountToken)
	}
}
