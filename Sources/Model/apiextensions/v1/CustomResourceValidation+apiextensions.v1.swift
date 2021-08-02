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
/// apiextensions.v1.CustomResourceValidation
///

import Foundation

public extension apiextensions.v1 {

	///
	/// CustomResourceValidation is a list of validation methods for CustomResources.
	///
	struct CustomResourceValidation: KubernetesResource {
		///
		/// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
		///
		public var openAPIV3Schema: [String: Any]?
		///
		/// Default memberwise initializer
		///
		public init(
			openAPIV3Schema: [String: Any]? = nil
		) {
			self.openAPIV3Schema = openAPIV3Schema
		}
	}
}

///
/// Codable conformance
///
public extension apiextensions.v1.CustomResourceValidation {

	private enum CodingKeys: String, CodingKey {

		case openAPIV3Schema = "openAPIV3Schema"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.openAPIV3Schema = try container.decodeIfPresent([String: Any].self, forKey: .openAPIV3Schema)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(openAPIV3Schema, forKey: .openAPIV3Schema)
	}
}
