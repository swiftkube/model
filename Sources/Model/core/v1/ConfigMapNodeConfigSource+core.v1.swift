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
/// core.v1.ConfigMapNodeConfigSource
///

import Foundation

public extension core.v1 {

	///
	/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.
	///
	struct ConfigMapNodeConfigSource: KubernetesResource {
		///
		/// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
		///
		public var kubeletConfigKey: String
		///
		/// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
		///
		public var name: String
		///
		/// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
		///
		public var namespace: String
		///
		/// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
		///
		public var resourceVersion: String?
		///
		/// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
		///
		public var uid: String?
		///
		/// Default memberwise initializer
		///
		public init(
			kubeletConfigKey: String,
			name: String,
			namespace: String,
			resourceVersion: String? = nil,
			uid: String? = nil
		) {
			self.kubeletConfigKey = kubeletConfigKey
			self.name = name
			self.namespace = namespace
			self.resourceVersion = resourceVersion
			self.uid = uid
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ConfigMapNodeConfigSource {

	private enum CodingKeys: String, CodingKey {

		case kubeletConfigKey = "kubeletConfigKey"
		case name = "name"
		case namespace = "namespace"
		case resourceVersion = "resourceVersion"
		case uid = "uid"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kubeletConfigKey = try container.decode(String.self, forKey: .kubeletConfigKey)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespace = try container.decode(String.self, forKey: .namespace)
		self.resourceVersion = try container.decodeIfPresent(String.self, forKey: .resourceVersion)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(kubeletConfigKey, forKey: .kubeletConfigKey)
		try container.encode(name, forKey: .name)
		try container.encode(namespace, forKey: .namespace)
		try container.encode(resourceVersion, forKey: .resourceVersion)
		try container.encode(uid, forKey: .uid)
	}
}
