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
	/// PersistentVolumeSpec is the specification of a persistent volume.
	///
	struct PersistentVolumeSpec: KubernetesResource {
		///
		/// AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
		///
		var accessModes: [String]?

		///
		/// AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
		///
		var awsElasticBlockStore: core.v1.AWSElasticBlockStoreVolumeSource?

		///
		/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
		///
		var azureDisk: core.v1.AzureDiskVolumeSource?

		///
		/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
		///
		var azureFile: core.v1.AzureFilePersistentVolumeSource?

		///
		/// A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
		///
		var capacity: [String: Quantity]?

		///
		/// CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
		///
		var cephfs: core.v1.CephFSPersistentVolumeSource?

		///
		/// Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
		///
		var cinder: core.v1.CinderPersistentVolumeSource?

		///
		/// ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
		///
		var claimRef: core.v1.ObjectReference?

		///
		/// CSI represents storage that is handled by an external CSI driver (Beta feature).
		///
		var csi: core.v1.CSIPersistentVolumeSource?

		///
		/// FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
		///
		var fc: core.v1.FCVolumeSource?

		///
		/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
		///
		var flexVolume: core.v1.FlexPersistentVolumeSource?

		///
		/// Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
		///
		var flocker: core.v1.FlockerVolumeSource?

		///
		/// GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
		///
		var gcePersistentDisk: core.v1.GCEPersistentDiskVolumeSource?

		///
		/// Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md
		///
		var glusterfs: core.v1.GlusterfsPersistentVolumeSource?

		///
		/// HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
		///
		var hostPath: core.v1.HostPathVolumeSource?

		///
		/// ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
		///
		var iscsi: core.v1.ISCSIPersistentVolumeSource?

		///
		/// Local represents directly-attached storage with node affinity
		///
		var local: core.v1.LocalVolumeSource?

		///
		/// A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
		///
		var mountOptions: [String]?

		///
		/// NFS represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
		///
		var nfs: core.v1.NFSVolumeSource?

		///
		/// NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
		///
		var nodeAffinity: core.v1.VolumeNodeAffinity?

		///
		/// What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
		///
		var persistentVolumeReclaimPolicy: String?

		///
		/// PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
		///
		var photonPersistentDisk: core.v1.PhotonPersistentDiskVolumeSource?

		///
		/// PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
		///
		var portworxVolume: core.v1.PortworxVolumeSource?

		///
		/// Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
		///
		var quobyte: core.v1.QuobyteVolumeSource?

		///
		/// RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md
		///
		var rbd: core.v1.RBDPersistentVolumeSource?

		///
		/// ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
		///
		var scaleIO: core.v1.ScaleIOPersistentVolumeSource?

		///
		/// Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
		///
		var storageClassName: String?

		///
		/// StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: https://examples.k8s.io/volumes/storageos/README.md
		///
		var storageos: core.v1.StorageOSPersistentVolumeSource?

		///
		/// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec. This is a beta feature.
		///
		var volumeMode: String?

		///
		/// VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
		///
		var vsphereVolume: core.v1.VsphereVirtualDiskVolumeSource?

	}
}

