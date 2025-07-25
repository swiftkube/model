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
/// Kubernetes v1.33.3
/// core.v1.ScopedResourceSelectorRequirement
///

import Foundation

// MARK: - core.v1.ScopedResourceSelectorRequirement

public extension core.v1 {

	///
	/// A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
	///
	struct ScopedResourceSelectorRequirement: KubernetesResource {
		///
		/// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
		///
		public var `operator`: String
		///
		/// The name of the scope that the selector applies to.
		///
		public var scopeName: String
		///
		/// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
		///
		public var values: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			`operator`: String,
			scopeName: String,
			values: [String]? = nil
		) {
			self.`operator` = `operator`
			self.scopeName = scopeName
			self.values = values
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ScopedResourceSelectorRequirement {

	private enum CodingKeys: String, CodingKey {

		case `operator` = "operator"
		case scopeName = "scopeName"
		case values = "values"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.`operator` = try container.decode(String.self, forKey: .`operator`)
		self.scopeName = try container.decode(String.self, forKey: .scopeName)
		self.values = try container.decodeIfPresent([String].self, forKey: .values)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(`operator`, forKey: .`operator`)
		try encodingContainer.encode(scopeName, forKey: .scopeName)
		try encodingContainer.encode(values, forKey: .values)
	}
}
