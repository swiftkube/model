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
	/// Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
	///
	struct ISCSIVolumeSource: KubernetesResource {
		///
		/// whether support iSCSI Discovery CHAP authentication
		///
		public var chapAuthDiscovery: Bool?
		///
		/// whether support iSCSI Session CHAP authentication
		///
		public var chapAuthSession: Bool?
		///
		/// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
		///
		public var fsType: String?
		///
		/// Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
		///
		public var initiatorName: String?
		///
		/// Target iSCSI Qualified Name.
		///
		public var iqn: String
		///
		/// iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
		///
		public var iscsiInterface: String?
		///
		/// iSCSI Target Lun number.
		///
		public var lun: Int32
		///
		/// iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		public var portals: [String]?
		///
		/// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
		///
		public var readOnly: Bool?
		///
		/// CHAP Secret for iSCSI target and initiator authentication
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		public var targetPortal: String
		///
		/// Default memberwise initializer
		///
		public init(
			chapAuthDiscovery: Bool?, 
			chapAuthSession: Bool?, 
			fsType: String?, 
			initiatorName: String?, 
			iqn: String, 
			iscsiInterface: String?, 
			lun: Int32, 
			portals: [String]?, 
			readOnly: Bool?, 
			secretRef: core.v1.LocalObjectReference?, 
			targetPortal: String
		) {
			self.chapAuthDiscovery = chapAuthDiscovery
			self.chapAuthSession = chapAuthSession
			self.fsType = fsType
			self.initiatorName = initiatorName
			self.iqn = iqn
			self.iscsiInterface = iscsiInterface
			self.lun = lun
			self.portals = portals
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.targetPortal = targetPortal
		}
	}
}

