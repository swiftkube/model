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
/// Kubernetes v1.22.7
/// core.v1.GlusterfsPersistentVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
	///
	struct GlusterfsPersistentVolumeSource: KubernetesResource {
		///
		/// EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
		///
		public var endpoints: String
		///
		/// EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
		///
		public var endpointsNamespace: String?
		///
		/// Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
		///
		public var path: String
		///
		/// ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
		///
		public var readOnly: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			endpoints: String,
			endpointsNamespace: String? = nil,
			path: String,
			readOnly: Bool? = nil
		) {
			self.endpoints = endpoints
			self.endpointsNamespace = endpointsNamespace
			self.path = path
			self.readOnly = readOnly
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.GlusterfsPersistentVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case endpoints = "endpoints"
		case endpointsNamespace = "endpointsNamespace"
		case path = "path"
		case readOnly = "readOnly"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.endpoints = try container.decode(String.self, forKey: .endpoints)
		self.endpointsNamespace = try container.decodeIfPresent(String.self, forKey: .endpointsNamespace)
		self.path = try container.decode(String.self, forKey: .path)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(endpoints, forKey: .endpoints)
		try encodingContainer.encode(endpointsNamespace, forKey: .endpointsNamespace)
		try encodingContainer.encode(path, forKey: .path)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
	}
}
