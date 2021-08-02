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
/// core.v1.TCPSocketAction
///

import Foundation

public extension core.v1 {

	///
	/// TCPSocketAction describes an action based on opening a socket
	///
	struct TCPSocketAction: KubernetesResource {
		///
		/// Optional: Host name to connect to, defaults to the pod IP.
		///
		public var host: String?
		///
		/// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
		///
		public var port: IntOrString
		///
		/// Default memberwise initializer
		///
		public init(
			host: String? = nil,
			port: IntOrString
		) {
			self.host = host
			self.port = port
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.TCPSocketAction {

	private enum CodingKeys: String, CodingKey {

		case host = "host"
		case port = "port"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.host = try container.decodeIfPresent(String.self, forKey: .host)
		self.port = try container.decode(IntOrString.self, forKey: .port)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(host, forKey: .host)
		try encodingContainer.encode(port, forKey: .port)
	}
}
