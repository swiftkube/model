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
/// core.v1.FlockerVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
	///
	struct FlockerVolumeSource: KubernetesResource {
		///
		/// Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
		///
		public var datasetName: String?
		///
		/// UUID of the dataset. This is unique identifier of a Flocker dataset
		///
		public var datasetUUID: String?
		///
		/// Default memberwise initializer
		///
		public init(
			datasetName: String? = nil,
			datasetUUID: String? = nil
		) {
			self.datasetName = datasetName
			self.datasetUUID = datasetUUID
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.FlockerVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case datasetName = "datasetName"
		case datasetUUID = "datasetUUID"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.datasetName = try container.decodeIfPresent(String.self, forKey: .datasetName)
		self.datasetUUID = try container.decodeIfPresent(String.self, forKey: .datasetUUID)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(datasetName, forKey: .datasetName)
		try container.encode(datasetUUID, forKey: .datasetUUID)
	}
}
