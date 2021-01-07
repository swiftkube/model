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
/// Kubernetes v1.18.13
/// admissionregistration.v1beta1.ServiceReference
///

import Foundation

public extension admissionregistration.v1beta1 {

	///
	/// ServiceReference holds a reference to Service.legacy.k8s.io
	///
	struct ServiceReference: KubernetesResource {
		///
		/// `name` is the name of the service. Required
		///
		public var name: String
		///
		/// `namespace` is the namespace of the service. Required
		///
		public var namespace: String
		///
		/// `path` is an optional URL path which will be sent in any request to this service.
		///
		public var path: String?
		///
		/// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
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
public extension admissionregistration.v1beta1.ServiceReference {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case namespace = "namespace"
		case path = "path"
		case port = "port"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespace = try container.decode(String.self, forKey: .namespace)
		self.path = try container.decodeIfPresent(String.self, forKey: .path)
		self.port = try container.decodeIfPresent(Int32.self, forKey: .port)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(name, forKey: .name)
		try container.encode(namespace, forKey: .namespace)
		try container.encode(path, forKey: .path)
		try container.encode(port, forKey: .port)
	}
}
