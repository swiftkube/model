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
/// admissionregistration.v1.ExpressionWarning
///

import Foundation

// MARK: - admissionregistration.v1.ExpressionWarning

public extension admissionregistration.v1 {

	///
	/// ExpressionWarning is a warning information that targets a specific expression.
	///
	struct ExpressionWarning: KubernetesResource {
		///
		/// The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is "spec.validations[0].expression"
		///
		public var fieldRef: String
		///
		/// The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
		///
		public var warning: String
		///
		/// Default memberwise initializer
		///
		public init(
			fieldRef: String,
			warning: String
		) {
			self.fieldRef = fieldRef
			self.warning = warning
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1.ExpressionWarning {

	private enum CodingKeys: String, CodingKey {

		case fieldRef = "fieldRef"
		case warning = "warning"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fieldRef = try container.decode(String.self, forKey: .fieldRef)
		self.warning = try container.decode(String.self, forKey: .warning)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fieldRef, forKey: .fieldRef)
		try encodingContainer.encode(warning, forKey: .warning)
	}
}
