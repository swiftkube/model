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
/// Kubernetes v1.20.9
/// apiregistration.v1beta1.APIServiceStatus
///

import Foundation

public extension apiregistration.v1beta1 {

	///
	/// APIServiceStatus contains derived information about an API server
	///
	struct APIServiceStatus: KubernetesResource {
		///
		/// Current service state of apiService.
		///
		public var conditions: [apiregistration.v1beta1.APIServiceCondition]?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [apiregistration.v1beta1.APIServiceCondition]? = nil
		) {
			self.conditions = conditions
		}
	}
}

///
/// Codable conformance
///
public extension apiregistration.v1beta1.APIServiceStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decodeIfPresent([apiregistration.v1beta1.APIServiceCondition].self, forKey: .conditions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conditions, forKey: .conditions)
	}
}
