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
	/// HTTPIngressPath associates a path regex with a backend. Incoming urls matching the path are forwarded to the backend.
	///
	struct HTTPIngressPath: KubernetesResource {
		///
		/// Backend defines the referenced service endpoint to which the traffic will be forwarded to.
		///
		public var backend: networking.v1beta1.IngressBackend
		///
		/// Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.
		///
		public var path: String?
		///
		/// Default memberwise initializer
		///
		public init(
			backend: networking.v1beta1.IngressBackend,
			path: String? = nil
		) {
			self.backend = backend
			self.path = path
		}
	}
}

///
/// Codable conformance
///
extension networking.v1beta1.HTTPIngressPath {

	private enum CodingKeys: String, CodingKey {
		case backend = "backend"
		case path = "path"
	}

}

