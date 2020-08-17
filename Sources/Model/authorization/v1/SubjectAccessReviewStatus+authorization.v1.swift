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

public extension authorization.v1 {

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

