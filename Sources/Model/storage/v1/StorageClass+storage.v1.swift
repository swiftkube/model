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

public extension storage.v1 {

	///
	/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
	/// 
	/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
	///
	struct StorageClass: KubernetesResource, ResourceWithMetadata {
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

