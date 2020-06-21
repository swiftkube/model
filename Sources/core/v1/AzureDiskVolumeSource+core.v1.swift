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
	/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
	///
	struct AzureDiskVolumeSource: KubernetesResource, Codable {
	
		///
		/// Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
		///
		var kind: String?
	
		///
		/// Host Caching mode: None, Read Only, Read Write.
		///
		var cachingMode: String?
	
		///
		/// The Name of the data disk in the blob storage
		///
		var diskName: String
	
		///
		/// The URI the data disk in the blob storage
		///
		var diskURI: String
	
		///
		/// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
		///
		var fsType: String?
	
		///
		/// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		var readOnly: Bool?
	
	}
}

