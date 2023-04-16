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
/// Kubernetes v1.26.4
/// networking.v1.HTTPIngressRuleValue
///

import Foundation

// MARK: - networking.v1.HTTPIngressRuleValue

public extension networking.v1 {

	///
	/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
	///
	struct HTTPIngressRuleValue: KubernetesResource {
		///
		/// A collection of paths that map requests to backends.
		///
		public var paths: [networking.v1.HTTPIngressPath]
		///
		/// Default memberwise initializer
		///
		public init(
			paths: [networking.v1.HTTPIngressPath]
		) {
			self.paths = paths
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.HTTPIngressRuleValue {

	private enum CodingKeys: String, CodingKey {

		case paths = "paths"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.paths = try container.decode([networking.v1.HTTPIngressPath].self, forKey: .paths)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(paths, forKey: .paths)
	}
}
