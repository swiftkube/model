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
/// authentication.v1.UserInfo
///

import Foundation

public extension authentication.v1 {

	///
	/// UserInfo holds the information about the user needed to implement the user.Info interface.
	///
	struct UserInfo: KubernetesResource {
		///
		/// Any additional information provided by the authenticator.
		///
		public var extra: [String: [String]]?
		///
		/// The names of groups this user is a part of.
		///
		public var groups: [String]?
		///
		/// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
		///
		public var uid: String?
		///
		/// The name that uniquely identifies this user among all active users.
		///
		public var username: String?
		///
		/// Default memberwise initializer
		///
		public init(
			extra: [String: [String]]? = nil,
			groups: [String]? = nil,
			uid: String? = nil,
			username: String? = nil
		) {
			self.extra = extra
			self.groups = groups
			self.uid = uid
			self.username = username
		}
	}
}

///
/// Codable conformance
///
public extension authentication.v1.UserInfo {

	private enum CodingKeys: String, CodingKey {

		case extra = "extra"
		case groups = "groups"
		case uid = "uid"
		case username = "username"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.extra = try container.decodeIfPresent([String: [String]].self, forKey: .extra)
		self.groups = try container.decodeIfPresent([String].self, forKey: .groups)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
		self.username = try container.decodeIfPresent(String.self, forKey: .username)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(extra, forKey: .extra)
		try encodingContainer.encode(groups, forKey: .groups)
		try encodingContainer.encode(uid, forKey: .uid)
		try encodingContainer.encode(username, forKey: .username)
	}
}
