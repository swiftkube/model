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
	/// NamespaceSpec describes the attributes on a Namespace.
	///
	struct NamespaceSpec: KubernetesResource {
		///
		/// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
		///
		public var finalizers: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			finalizers: [String]? = nil
		) {
			self.finalizers = finalizers
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NamespaceSpec {

	private enum CodingKeys: String, CodingKey {
		case finalizers = "finalizers"
	}

}

