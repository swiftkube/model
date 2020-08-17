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

public extension networking.v1beta1 {

	///
	/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
	///
	struct HTTPIngressRuleValue: KubernetesResource {
		///
		/// A collection of paths that map requests to backends.
		///
		public var paths: [networking.v1beta1.HTTPIngressPath]
		///
		/// Default memberwise initializer
		///
		public init(
			paths: [networking.v1beta1.HTTPIngressPath]
		) {
			self.paths = paths
		}
	}
}

