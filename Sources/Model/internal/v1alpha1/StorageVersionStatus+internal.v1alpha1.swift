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
/// internal.v1alpha1.StorageVersionStatus
///

import Foundation

public extension `internal`.v1alpha1 {

	///
	/// API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
	///
	struct StorageVersionStatus: KubernetesResource {
		///
		/// If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
		///
		public var commonEncodingVersion: String?
		///
		/// The latest available observations of the storageVersion's state.
		///
		public var conditions: [`internal`.v1alpha1.StorageVersionCondition]?
		///
		/// The reported versions per API server instance.
		///
		public var storageVersions: [`internal`.v1alpha1.ServerStorageVersion]?
		///
		/// Default memberwise initializer
		///
		public init(
			commonEncodingVersion: String? = nil,
			conditions: [`internal`.v1alpha1.StorageVersionCondition]? = nil,
			storageVersions: [`internal`.v1alpha1.ServerStorageVersion]? = nil
		) {
			self.commonEncodingVersion = commonEncodingVersion
			self.conditions = conditions
			self.storageVersions = storageVersions
		}
	}
}

///
/// Codable conformance
///
public extension `internal`.v1alpha1.StorageVersionStatus {

	private enum CodingKeys: String, CodingKey {

		case commonEncodingVersion = "commonEncodingVersion"
		case conditions = "conditions"
		case storageVersions = "storageVersions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.commonEncodingVersion = try container.decodeIfPresent(String.self, forKey: .commonEncodingVersion)
		self.conditions = try container.decodeIfPresent([`internal`.v1alpha1.StorageVersionCondition].self, forKey: .conditions)
		self.storageVersions = try container.decodeIfPresent([`internal`.v1alpha1.ServerStorageVersion].self, forKey: .storageVersions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(commonEncodingVersion, forKey: .commonEncodingVersion)
		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(storageVersions, forKey: .storageVersions)
	}
}
