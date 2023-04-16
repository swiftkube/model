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
/// Kubernetes v1.26.4
/// storage.v1.StorageClass
///

import Foundation

// MARK: - storage.v1.StorageClass

public extension storage.v1 {

	///
	/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
	///
	/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
	///
	struct StorageClass: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = storage.v1.StorageClassList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "storage.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "StorageClass"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// AllowVolumeExpansion shows whether the storage class allow volume expand
		///
		public var allowVolumeExpansion: Bool?
		///
		/// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
		///
		public var allowedTopologies: [core.v1.TopologySelectorTerm]?
		///
		/// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
		///
		public var mountOptions: [String]?
		///
		/// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
		///
		public var parameters: [String: String]?
		///
		/// Provisioner indicates the type of the provisioner.
		///
		public var provisioner: String
		///
		/// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
		///
		public var reclaimPolicy: String?
		///
		/// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
		///
		public var volumeBindingMode: String?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			allowVolumeExpansion: Bool? = nil,
			allowedTopologies: [core.v1.TopologySelectorTerm]? = nil,
			mountOptions: [String]? = nil,
			parameters: [String: String]? = nil,
			provisioner: String,
			reclaimPolicy: String? = nil,
			volumeBindingMode: String? = nil
		) {
			self.metadata = metadata
			self.allowVolumeExpansion = allowVolumeExpansion
			self.allowedTopologies = allowedTopologies
			self.mountOptions = mountOptions
			self.parameters = parameters
			self.provisioner = provisioner
			self.reclaimPolicy = reclaimPolicy
			self.volumeBindingMode = volumeBindingMode
		}
	}
}

///
/// Codable conformance
///
public extension storage.v1.StorageClass {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case allowVolumeExpansion = "allowVolumeExpansion"
		case allowedTopologies = "allowedTopologies"
		case mountOptions = "mountOptions"
		case parameters = "parameters"
		case provisioner = "provisioner"
		case reclaimPolicy = "reclaimPolicy"
		case volumeBindingMode = "volumeBindingMode"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.allowVolumeExpansion = try container.decodeIfPresent(Bool.self, forKey: .allowVolumeExpansion)
		self.allowedTopologies = try container.decodeIfPresent([core.v1.TopologySelectorTerm].self, forKey: .allowedTopologies)
		self.mountOptions = try container.decodeIfPresent([String].self, forKey: .mountOptions)
		self.parameters = try container.decodeIfPresent([String: String].self, forKey: .parameters)
		self.provisioner = try container.decode(String.self, forKey: .provisioner)
		self.reclaimPolicy = try container.decodeIfPresent(String.self, forKey: .reclaimPolicy)
		self.volumeBindingMode = try container.decodeIfPresent(String.self, forKey: .volumeBindingMode)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(allowVolumeExpansion, forKey: .allowVolumeExpansion)
		try encodingContainer.encode(allowedTopologies, forKey: .allowedTopologies)
		try encodingContainer.encode(mountOptions, forKey: .mountOptions)
		try encodingContainer.encode(parameters, forKey: .parameters)
		try encodingContainer.encode(provisioner, forKey: .provisioner)
		try encodingContainer.encode(reclaimPolicy, forKey: .reclaimPolicy)
		try encodingContainer.encode(volumeBindingMode, forKey: .volumeBindingMode)
	}
}
