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

public extension apiextensions.v1beta1 {

	///
	/// ServiceReference holds a reference to Service.legacy.k8s.io
	///
	struct ServiceReference: KubernetesResource {
		///
		/// name is the name of the service. Required
		///
		public var name: String
		///
		/// namespace is the namespace of the service. Required
		///
		public var namespace: String
		///
		/// path is an optional URL path at which the webhook will be contacted.
		///
		public var path: String?
		///
		/// port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
		///
		public var port: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			namespace: String,
			path: String? = nil,
			port: Int32? = nil
		) {
			self.name = name
			self.namespace = namespace
			self.path = path
			self.port = port
		}
	}
}

///
/// Codable conformance
///
extension apiextensions.v1beta1.ServiceReference {

	private enum CodingKeys: String, CodingKey {
		case name = "name"
		case namespace = "namespace"
		case path = "path"
		case port = "port"
	}

}

