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

public extension flowcontrol.v1alpha1 {

	///
	/// GroupSubject holds detailed information for group-kind subject.
	///
	struct GroupSubject: KubernetesResource {
		///
		/// name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			name: String
		) {
			self.name = name
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.GroupSubject {

	private enum CodingKeys: String, CodingKey {
		case name = "name"
	}

}

