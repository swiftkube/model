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

public extension authentication.v1 {

	///
	/// UserInfo holds the information about the user needed to implement the user.Info interface.
	///
	struct UserInfo: KubernetesResource {
		///
		/// Any additional information provided by the authenticator.
		///
		var extra: [String: [String]]?

		///
		/// The names of groups this user is a part of.
		///
		var groups: [String]?

		///
		/// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
		///
		var uid: String?

		///
		/// The name that uniquely identifies this user among all active users.
		///
		var username: String?

	}
}

