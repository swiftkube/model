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
/// core.v1.PersistentVolumeClaimSpec
///

import Foundation

public extension core.v1 {

	///
	/// PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
	///
	struct PersistentVolumeClaimSpec: KubernetesResource {
		///
		/// AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
		///
		public var accessModes: [String]?
		///
		/// This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.
		///
		public var dataSource: core.v1.TypedLocalObjectReference?
		///
		/// Specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef
		///   allows any non-core object, as well as PersistentVolumeClaim objects.
		/// * While DataSource ignores disallowed values (dropping them), DataSourceRef
		///   preserves all values, and generates an error if a disallowed value is
		///   specified.
		/// (Alpha) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
		///
		public var dataSourceRef: core.v1.TypedLocalObjectReference?
		///
		/// Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
		///
		public var resources: core.v1.ResourceRequirements?
		///
		/// A label query over volumes to consider for binding.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
		///
		public var storageClassName: String?
		///
		/// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
		///
		public var volumeMode: String?
		///
		/// VolumeName is the binding reference to the PersistentVolume backing this claim.
		///
		public var volumeName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			accessModes: [String]? = nil,
			dataSource: core.v1.TypedLocalObjectReference? = nil,
			dataSourceRef: core.v1.TypedLocalObjectReference? = nil,
			resources: core.v1.ResourceRequirements? = nil,
			selector: meta.v1.LabelSelector? = nil,
			storageClassName: String? = nil,
			volumeMode: String? = nil,
			volumeName: String? = nil
		) {
			self.accessModes = accessModes
			self.dataSource = dataSource
			self.dataSourceRef = dataSourceRef
			self.resources = resources
			self.selector = selector
			self.storageClassName = storageClassName
			self.volumeMode = volumeMode
			self.volumeName = volumeName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PersistentVolumeClaimSpec {

	private enum CodingKeys: String, CodingKey {

		case accessModes = "accessModes"
		case dataSource = "dataSource"
		case dataSourceRef = "dataSourceRef"
		case resources = "resources"
		case selector = "selector"
		case storageClassName = "storageClassName"
		case volumeMode = "volumeMode"
		case volumeName = "volumeName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.accessModes = try container.decodeIfPresent([String].self, forKey: .accessModes)
		self.dataSource = try container.decodeIfPresent(core.v1.TypedLocalObjectReference.self, forKey: .dataSource)
		self.dataSourceRef = try container.decodeIfPresent(core.v1.TypedLocalObjectReference.self, forKey: .dataSourceRef)
		self.resources = try container.decodeIfPresent(core.v1.ResourceRequirements.self, forKey: .resources)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
		self.storageClassName = try container.decodeIfPresent(String.self, forKey: .storageClassName)
		self.volumeMode = try container.decodeIfPresent(String.self, forKey: .volumeMode)
		self.volumeName = try container.decodeIfPresent(String.self, forKey: .volumeName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(accessModes, forKey: .accessModes)
		try encodingContainer.encode(dataSource, forKey: .dataSource)
		try encodingContainer.encode(dataSourceRef, forKey: .dataSourceRef)
		try encodingContainer.encode(resources, forKey: .resources)
		try encodingContainer.encode(selector, forKey: .selector)
		try encodingContainer.encode(storageClassName, forKey: .storageClassName)
		try encodingContainer.encode(volumeMode, forKey: .volumeMode)
		try encodingContainer.encode(volumeName, forKey: .volumeName)
	}
}
