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
	/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
	///
	struct SubjectAccessReviewSpec: KubernetesResource {
		///
		/// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
		///
		var extra: [String: [String]]?

		///
		/// Groups is the groups you're testing for.
		///
		var groups: [String]?

		///
		/// NonResourceAttributes describes information for a non-resource access request
		///
		var nonResourceAttributes: authorization.v1.NonResourceAttributes?

		///
		/// ResourceAuthorizationAttributes describes information for a resource access request
		///
		var resourceAttributes: authorization.v1.ResourceAttributes?

		///
		/// UID information about the requesting user.
		///
		var uid: String?

		///
		/// User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
		///
		var user: String?

	}
}

