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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// authorization.v1.SelfSubjectAccessReviewSpec
///

import Foundation

public extension authorization.v1 {

	///
	/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
	///
	struct SelfSubjectAccessReviewSpec: KubernetesResource {
		///
		/// NonResourceAttributes describes information for a non-resource access request
		///
		public var nonResourceAttributes: authorization.v1.NonResourceAttributes?
		///
		/// ResourceAuthorizationAttributes describes information for a resource access request
		///
		public var resourceAttributes: authorization.v1.ResourceAttributes?
		///
		/// Default memberwise initializer
		///
		public init(
			nonResourceAttributes: authorization.v1.NonResourceAttributes? = nil,
			resourceAttributes: authorization.v1.ResourceAttributes? = nil
		) {
			self.nonResourceAttributes = nonResourceAttributes
			self.resourceAttributes = resourceAttributes
		}
	}
}

///
/// Codable conformance
///
extension authorization.v1.SelfSubjectAccessReviewSpec {

	private enum CodingKeys: String, CodingKey {

		case nonResourceAttributes = "nonResourceAttributes"
		case resourceAttributes = "resourceAttributes"
	}

}

