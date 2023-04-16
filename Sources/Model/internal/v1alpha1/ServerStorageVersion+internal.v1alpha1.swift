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
/// Kubernetes v1.26.4
/// internal.v1alpha1.ServerStorageVersion
///

import Foundation

// MARK: - `internal`.v1alpha1.ServerStorageVersion

public extension `internal`.v1alpha1 {

	///
	/// An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
	///
	struct ServerStorageVersion: KubernetesResource {
		///
		/// The ID of the reporting API server.
		///
		public var apiServerID: String?
		///
		/// The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
		///
		public var decodableVersions: [String]?
		///
		/// The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
		///
		public var encodingVersion: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiServerID: String? = nil,
			decodableVersions: [String]? = nil,
			encodingVersion: String? = nil
		) {
			self.apiServerID = apiServerID
			self.decodableVersions = decodableVersions
			self.encodingVersion = encodingVersion
		}
	}
}

///
/// Codable conformance
///
public extension `internal`.v1alpha1.ServerStorageVersion {

	private enum CodingKeys: String, CodingKey {

		case apiServerID = "apiServerID"
		case decodableVersions = "decodableVersions"
		case encodingVersion = "encodingVersion"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiServerID = try container.decodeIfPresent(String.self, forKey: .apiServerID)
		self.decodableVersions = try container.decodeIfPresent([String].self, forKey: .decodableVersions)
		self.encodingVersion = try container.decodeIfPresent(String.self, forKey: .encodingVersion)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiServerID, forKey: .apiServerID)
		try encodingContainer.encode(decodableVersions, forKey: .decodableVersions)
		try encodingContainer.encode(encodingVersion, forKey: .encodingVersion)
	}
}
