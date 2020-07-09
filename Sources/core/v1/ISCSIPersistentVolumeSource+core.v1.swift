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
	/// ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
	///
	struct ISCSIPersistentVolumeSource: KubernetesResource {
		///
		/// whether support iSCSI Discovery CHAP authentication
		///
		var chapAuthDiscovery: Bool?

		///
		/// whether support iSCSI Session CHAP authentication
		///
		var chapAuthSession: Bool?

		///
		/// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
		///
		var fsType: String?

		///
		/// Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
		///
		var initiatorName: String?

		///
		/// Target iSCSI Qualified Name.
		///
		var iqn: String

		///
		/// iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
		///
		var iscsiInterface: String?

		///
		/// iSCSI Target Lun number.
		///
		var lun: Int32

		///
		/// iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		var portals: [String]?

		///
		/// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
		///
		var readOnly: Bool?

		///
		/// CHAP Secret for iSCSI target and initiator authentication
		///
		var secretRef: core.v1.SecretReference?

		///
		/// iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		var targetPortal: String

	}
}

