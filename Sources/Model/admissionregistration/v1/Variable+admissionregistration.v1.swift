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
/// Kubernetes v1.32.0
/// admissionregistration.v1.Variable
///

import Foundation

// MARK: - admissionregistration.v1.Variable

public extension admissionregistration.v1 {

	///
	/// Variable is the definition of a variable that is used for composition. A variable is defined as a named expression.
	///
	struct Variable: KubernetesResource {
		///
		/// Expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
		///
		public var expression: String
		///
		/// Name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			expression: String,
			name: String
		) {
			self.expression = expression
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1.Variable {

	private enum CodingKeys: String, CodingKey {

		case expression = "expression"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.expression = try container.decode(String.self, forKey: .expression)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(expression, forKey: .expression)
		try encodingContainer.encode(name, forKey: .name)
	}
}
