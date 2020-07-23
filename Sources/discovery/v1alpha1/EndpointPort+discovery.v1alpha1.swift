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

public extension discovery.v1alpha1 {

	///
	/// EndpointPort represents a Port used by an EndpointSlice
	///
	struct EndpointPort: KubernetesResource {
		///
		/// The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass IANA_SVC_NAME validation: * must be no more than 15 characters long * may contain only [-a-z0-9] * must contain at least one letter [a-z] * it must not start or end with a hyphen, nor contain adjacent hyphens Default is empty string.
		///
		public var name: String?
		///
		/// The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
		///
		public var port: Int32?
		///
		/// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
		///
		public var `protocol`: String?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String?, 
			port: Int32?, 
			`protocol`: String?
		) {
			self.name = name
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

