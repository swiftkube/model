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
/// meta.v1.APIVersions
///

import Foundation

public extension meta.v1 {

	///
	/// APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
	///
	struct APIVersions: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "APIVersions"
		///
		/// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
		///
		public var serverAddressByClientCIDRs: [meta.v1.ServerAddressByClientCIDR]
		///
		/// versions are the api versions that are available.
		///
		public var versions: [String]
		///
		/// Default memberwise initializer
		///
		public init(
			serverAddressByClientCIDRs: [meta.v1.ServerAddressByClientCIDR],
			versions: [String]
		) {
			self.serverAddressByClientCIDRs = serverAddressByClientCIDRs
			self.versions = versions
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.APIVersions {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case serverAddressByClientCIDRs = "serverAddressByClientCIDRs"
		case versions = "versions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.serverAddressByClientCIDRs = try container.decode([meta.v1.ServerAddressByClientCIDR].self, forKey: .serverAddressByClientCIDRs)
		self.versions = try container.decode([String].self, forKey: .versions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(serverAddressByClientCIDRs, forKey: .serverAddressByClientCIDRs)
		try encodingContainer.encode(versions, forKey: .versions)
	}
}
