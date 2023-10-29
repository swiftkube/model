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
/// Kubernetes v1.28.3
/// discovery.v1.EndpointPort
///

import Foundation

// MARK: - discovery.v1.EndpointPort

public extension discovery.v1 {

	///
	/// EndpointPort represents a Port used by an EndpointSlice
	///
	struct EndpointPort: KubernetesResource {
		///
		/// The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:
		///
		/// * Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names).
		///
		/// * Kubernetes-defined prefixed names:
		///   * 'kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540
		///   * 'kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455
		///   * 'kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455
		///
		/// * Other protocols should use implementation-defined prefixed names such as mycompany.com/my-custom-protocol.
		///
		public var appProtocol: String?
		///
		/// name represents the name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
		///
		public var name: String?
		///
		/// port represents the port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
		///
		public var port: Int32?
		///
		/// protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
		///
		public var `protocol`: String?
		///
		/// Default memberwise initializer
		///
		public init(
			appProtocol: String? = nil,
			name: String? = nil,
			port: Int32? = nil,
			`protocol`: String? = nil
		) {
			self.appProtocol = appProtocol
			self.name = name
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

///
/// Codable conformance
///
public extension discovery.v1.EndpointPort {

	private enum CodingKeys: String, CodingKey {

		case appProtocol = "appProtocol"
		case name = "name"
		case port = "port"
		case `protocol` = "protocol"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.appProtocol = try container.decodeIfPresent(String.self, forKey: .appProtocol)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.port = try container.decodeIfPresent(Int32.self, forKey: .port)
		self.`protocol` = try container.decodeIfPresent(String.self, forKey: .`protocol`)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(appProtocol, forKey: .appProtocol)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(port, forKey: .port)
		try encodingContainer.encode(`protocol`, forKey: .`protocol`)
	}
}
