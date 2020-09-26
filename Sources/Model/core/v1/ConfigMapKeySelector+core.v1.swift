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

public extension core.v1 {

	///
	/// Selects a key from a ConfigMap.
	///
	struct ConfigMapKeySelector: KubernetesResource {
		///
		/// The key to select.
		///
		public var key: String
		///
		/// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
		///
		public var name: String?
		///
		/// Specify whether the ConfigMap or its key must be defined
		///
		public var optional: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			key: String,
			name: String? = nil,
			optional: Bool? = nil
		) {
			self.key = key
			self.name = name
			self.optional = optional
		}
	}
}

///
/// Codable conformance
///
extension core.v1.ConfigMapKeySelector {

	private enum CodingKeys: String, CodingKey {
		case key = "key"
		case name = "name"
		case optional = "optional"
	}

}

