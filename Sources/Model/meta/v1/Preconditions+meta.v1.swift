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
/// meta.v1.Preconditions
///

import Foundation

// MARK: - meta.v1.Preconditions

public extension meta.v1 {

	///
	/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
	///
	struct Preconditions: KubernetesResource {
		///
		/// Specifies the target ResourceVersion
		///
		public var resourceVersion: String?
		///
		/// Specifies the target UID.
		///
		public var uid: String?
		///
		/// Default memberwise initializer
		///
		public init(
			resourceVersion: String? = nil,
			uid: String? = nil
		) {
			self.resourceVersion = resourceVersion
			self.uid = uid
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.Preconditions {

	private enum CodingKeys: String, CodingKey {

		case resourceVersion = "resourceVersion"
		case uid = "uid"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.resourceVersion = try container.decodeIfPresent(String.self, forKey: .resourceVersion)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(resourceVersion, forKey: .resourceVersion)
		try encodingContainer.encode(uid, forKey: .uid)
	}
}
