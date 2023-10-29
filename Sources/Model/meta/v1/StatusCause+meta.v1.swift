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
/// Kubernetes v1.28.3
/// meta.v1.StatusCause
///

import Foundation

// MARK: - meta.v1.StatusCause

public extension meta.v1 {

	///
	/// StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
	///
	struct StatusCause: KubernetesResource {
		///
		/// The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
		///
		/// Examples:
		///   "name" - the field "name" on the current resource
		///   "items[0].name" - the field "name" on the first array entry in "items"
		///
		public var field: String?
		///
		/// A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
		///
		public var message: String?
		///
		/// A machine-readable description of the cause of the error. If this value is empty there is no information available.
		///
		public var reason: String?
		///
		/// Default memberwise initializer
		///
		public init(
			field: String? = nil,
			message: String? = nil,
			reason: String? = nil
		) {
			self.field = field
			self.message = message
			self.reason = reason
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.StatusCause {

	private enum CodingKeys: String, CodingKey {

		case field = "field"
		case message = "message"
		case reason = "reason"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.field = try container.decodeIfPresent(String.self, forKey: .field)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(field, forKey: .field)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(reason, forKey: .reason)
	}
}
