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
/// core.v1.NodeAddress
///

import Foundation

public extension core.v1 {

	///
	/// NodeAddress contains information for the node's address.
	///
	struct NodeAddress: KubernetesResource {
		///
		/// The node address.
		///
		public var address: String
		///
		/// Node address type, one of Hostname, ExternalIP or InternalIP.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			address: String,
			type: String
		) {
			self.address = address
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeAddress {

	private enum CodingKeys: String, CodingKey {

		case address = "address"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.address = try container.decode(String.self, forKey: .address)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(address, forKey: .address)
		try container.encode(type, forKey: .type)
	}
}
