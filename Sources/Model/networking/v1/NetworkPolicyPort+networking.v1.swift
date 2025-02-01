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
/// Kubernetes v1.32.0
/// networking.v1.NetworkPolicyPort
///

import Foundation

// MARK: - networking.v1.NetworkPolicyPort

public extension networking.v1 {

	///
	/// NetworkPolicyPort describes a port to allow traffic on
	///
	struct NetworkPolicyPort: KubernetesResource {
		///
		/// endPort indicates that the range of ports from port to endPort if set, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
		///
		public var endPort: Int32?
		///
		/// port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
		///
		public var port: IntOrString?
		///
		/// protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
		///
		public var `protocol`: String?
		///
		/// Default memberwise initializer
		///
		public init(
			endPort: Int32? = nil,
			port: IntOrString? = nil,
			`protocol`: String? = nil
		) {
			self.endPort = endPort
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.NetworkPolicyPort {

	private enum CodingKeys: String, CodingKey {

		case endPort = "endPort"
		case port = "port"
		case `protocol` = "protocol"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.endPort = try container.decodeIfPresent(Int32.self, forKey: .endPort)
		self.port = try container.decodeIfPresent(IntOrString.self, forKey: .port)
		self.`protocol` = try container.decodeIfPresent(String.self, forKey: .`protocol`)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(endPort, forKey: .endPort)
		try encodingContainer.encode(port, forKey: .port)
		try encodingContainer.encode(`protocol`, forKey: .`protocol`)
	}
}
