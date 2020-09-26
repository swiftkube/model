//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

import Foundation

public extension meta.v1 {

	///
	/// A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
	///
	struct LabelSelectorRequirement: KubernetesResource {
		///
		/// key is the label key that the selector applies to.
		///
		public var key: String
		///
		/// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
		///
		public var `operator`: String
		///
		/// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
		///
		public var values: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			key: String,
			`operator`: String,
			values: [String]? = nil
		) {
			self.key = key
			self.`operator` = `operator`
			self.values = values
		}
	}
}

///
/// Codable conformance
///
extension meta.v1.LabelSelectorRequirement {

	private enum CodingKeys: String, CodingKey {
		case key = "key"
		case `operator` = "operator"
		case values = "values"
	}

}

