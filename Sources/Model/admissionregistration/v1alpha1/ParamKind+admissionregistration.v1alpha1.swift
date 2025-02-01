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
/// admissionregistration.v1alpha1.ParamKind
///

import Foundation

// MARK: - admissionregistration.v1alpha1.ParamKind

public extension admissionregistration.v1alpha1 {

	///
	/// ParamKind is a tuple of Group Kind and Version.
	///
	struct ParamKind: KubernetesResource {
		///
		/// APIVersion is the API group version the resources belong to. In format of "group/version". Required.
		///
		public var apiVersion: String?
		///
		/// Kind is the API kind the resources belong to. Required.
		///
		public var kind: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			kind: String? = nil
		) {
			self.apiVersion = apiVersion
			self.kind = kind
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1alpha1.ParamKind {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiVersion = try container.decodeIfPresent(String.self, forKey: .apiVersion)
		self.kind = try container.decodeIfPresent(String.self, forKey: .kind)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
	}
}
