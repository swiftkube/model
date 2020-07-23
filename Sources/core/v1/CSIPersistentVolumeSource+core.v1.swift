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

public extension core.v1 {

	///
	/// Represents storage that is managed by an external CSI volume driver (Beta feature)
	///
	struct CSIPersistentVolumeSource: KubernetesResource {
		///
		/// ControllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This is an alpha field and requires enabling ExpandCSIVolumes feature gate. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var controllerExpandSecretRef: core.v1.SecretReference?
		///
		/// ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var controllerPublishSecretRef: core.v1.SecretReference?
		///
		/// Driver is the name of the driver to use for this volume. Required.
		///
		public var driver: String
		///
		/// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
		///
		public var fsType: String?
		///
		/// NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var nodePublishSecretRef: core.v1.SecretReference?
		///
		/// NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
		///
		public var nodeStageSecretRef: core.v1.SecretReference?
		///
		/// Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
		///
		public var readOnly: Bool?
		///
		/// Attributes of the volume to publish.
		///
		public var volumeAttributes: [String: String]?
		///
		/// VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
		///
		public var volumeHandle: String
		///
		/// Default memberwise initializer
		///
		public init(
			controllerExpandSecretRef: core.v1.SecretReference?, 
			controllerPublishSecretRef: core.v1.SecretReference?, 
			driver: String, 
			fsType: String?, 
			nodePublishSecretRef: core.v1.SecretReference?, 
			nodeStageSecretRef: core.v1.SecretReference?, 
			readOnly: Bool?, 
			volumeAttributes: [String: String]?, 
			volumeHandle: String
		) {
			self.controllerExpandSecretRef = controllerExpandSecretRef
			self.controllerPublishSecretRef = controllerPublishSecretRef
			self.driver = driver
			self.fsType = fsType
			self.nodePublishSecretRef = nodePublishSecretRef
			self.nodeStageSecretRef = nodeStageSecretRef
			self.readOnly = readOnly
			self.volumeAttributes = volumeAttributes
			self.volumeHandle = volumeHandle
		}
	}
}

