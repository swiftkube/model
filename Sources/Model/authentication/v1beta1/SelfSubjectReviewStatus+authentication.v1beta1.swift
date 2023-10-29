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
/// authentication.v1beta1.SelfSubjectReviewStatus
///

import Foundation

// MARK: - authentication.v1beta1.SelfSubjectReviewStatus

public extension authentication.v1beta1 {

	///
	/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
	///
	struct SelfSubjectReviewStatus: KubernetesResource {
		///
		/// User attributes of the user making this request.
		///
		public var userInfo: authentication.v1.UserInfo?
		///
		/// Default memberwise initializer
		///
		public init(
			userInfo: authentication.v1.UserInfo? = nil
		) {
			self.userInfo = userInfo
		}
	}
}

///
/// Codable conformance
///
public extension authentication.v1beta1.SelfSubjectReviewStatus {

	private enum CodingKeys: String, CodingKey {

		case userInfo = "userInfo"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.userInfo = try container.decodeIfPresent(authentication.v1.UserInfo.self, forKey: .userInfo)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(userInfo, forKey: .userInfo)
	}
}
