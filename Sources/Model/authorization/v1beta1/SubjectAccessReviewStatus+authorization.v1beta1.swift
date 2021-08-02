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
/// authorization.v1beta1.SubjectAccessReviewStatus
///

import Foundation

public extension authorization.v1beta1 {

	///
	/// SubjectAccessReviewStatus
	///
	struct SubjectAccessReviewStatus: KubernetesResource {
		///
		/// Allowed is required. True if the action would be allowed, false otherwise.
		///
		public var allowed: Bool
		///
		/// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
		///
		public var denied: Bool?
		///
		/// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
		///
		public var evaluationError: String?
		///
		/// Reason is optional.  It indicates why a request was allowed or denied.
		///
		public var reason: String?
		///
		/// Default memberwise initializer
		///
		public init(
			allowed: Bool,
			denied: Bool? = nil,
			evaluationError: String? = nil,
			reason: String? = nil
		) {
			self.allowed = allowed
			self.denied = denied
			self.evaluationError = evaluationError
			self.reason = reason
		}
	}
}

///
/// Codable conformance
///
public extension authorization.v1beta1.SubjectAccessReviewStatus {

	private enum CodingKeys: String, CodingKey {

		case allowed = "allowed"
		case denied = "denied"
		case evaluationError = "evaluationError"
		case reason = "reason"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allowed = try container.decode(Bool.self, forKey: .allowed)
		self.denied = try container.decodeIfPresent(Bool.self, forKey: .denied)
		self.evaluationError = try container.decodeIfPresent(String.self, forKey: .evaluationError)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allowed, forKey: .allowed)
		try encodingContainer.encode(denied, forKey: .denied)
		try encodingContainer.encode(evaluationError, forKey: .evaluationError)
		try encodingContainer.encode(reason, forKey: .reason)
	}
}
