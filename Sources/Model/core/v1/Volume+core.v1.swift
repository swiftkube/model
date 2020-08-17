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
	/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
	///
	struct Volume: KubernetesResource {
		///
		/// AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
		///
		public var awsElasticBlockStore: core.v1.AWSElasticBlockStoreVolumeSource?
		///
		/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
		///
		public var azureDisk: core.v1.AzureDiskVolumeSource?
		///
		/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
		///
		public var azureFile: core.v1.AzureFileVolumeSource?
		///
		/// CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
		///
		public var cephfs: core.v1.CephFSVolumeSource?
		///
		/// Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
		///
		public var cinder: core.v1.CinderVolumeSource?
		///
		/// ConfigMap represents a configMap that should populate this volume
		///
		public var configMap: core.v1.ConfigMapVolumeSource?
		///
		/// CSI (Container Storage Interface) represents storage that is handled by an external CSI driver (Alpha feature).
		///
		public var csi: core.v1.CSIVolumeSource?
		///
		/// DownwardAPI represents downward API about the pod that should populate this volume
		///
		public var downwardAPI: core.v1.DownwardAPIVolumeSource?
		///
		/// EmptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
		///
		public var emptyDir: core.v1.EmptyDirVolumeSource?
		///
		/// FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
		///
		public var fc: core.v1.FCVolumeSource?
		///
		/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
		///
		public var flexVolume: core.v1.FlexVolumeSource?
		///
		/// Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
		///
		public var flocker: core.v1.FlockerVolumeSource?
		///
		/// GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
		///
		public var gcePersistentDisk: core.v1.GCEPersistentDiskVolumeSource?
		///
		/// GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
		///
		public var gitRepo: core.v1.GitRepoVolumeSource?
		///
		/// Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/glusterfs/README.md
		///
		public var glusterfs: core.v1.GlusterfsVolumeSource?
		///
		/// HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
		///
		public var hostPath: core.v1.HostPathVolumeSource?
		///
		/// ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md
		///
		public var iscsi: core.v1.ISCSIVolumeSource?
		///
		/// Volume's name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
		///
		public var name: String
		///
		/// NFS represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
		///
		public var nfs: core.v1.NFSVolumeSource?
		///
		/// PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
		///
		public var persistentVolumeClaim: core.v1.PersistentVolumeClaimVolumeSource?
		///
		/// PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
		///
		public var photonPersistentDisk: core.v1.PhotonPersistentDiskVolumeSource?
		///
		/// PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
		///
		public var portworxVolume: core.v1.PortworxVolumeSource?
		///
		/// Items for all in one resources secrets, configmaps, and downward API
		///
		public var projected: core.v1.ProjectedVolumeSource?
		///
		/// Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
		///
		public var quobyte: core.v1.QuobyteVolumeSource?
		///
		/// RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md
		///
		public var rbd: core.v1.RBDVolumeSource?
		///
		/// ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
		///
		public var scaleIO: core.v1.ScaleIOVolumeSource?
		///
		/// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
		///
		public var secret: core.v1.SecretVolumeSource?
		///
		/// StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
		///
		public var storageos: core.v1.StorageOSVolumeSource?
		///
		/// VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
		///
		public var vsphereVolume: core.v1.VsphereVirtualDiskVolumeSource?
		///
		/// Default memberwise initializer
		///
		public init(
			awsElasticBlockStore: core.v1.AWSElasticBlockStoreVolumeSource? = nil,
			azureDisk: core.v1.AzureDiskVolumeSource? = nil,
			azureFile: core.v1.AzureFileVolumeSource? = nil,
			cephfs: core.v1.CephFSVolumeSource? = nil,
			cinder: core.v1.CinderVolumeSource? = nil,
			configMap: core.v1.ConfigMapVolumeSource? = nil,
			csi: core.v1.CSIVolumeSource? = nil,
			downwardAPI: core.v1.DownwardAPIVolumeSource? = nil,
			emptyDir: core.v1.EmptyDirVolumeSource? = nil,
			fc: core.v1.FCVolumeSource? = nil,
			flexVolume: core.v1.FlexVolumeSource? = nil,
			flocker: core.v1.FlockerVolumeSource? = nil,
			gcePersistentDisk: core.v1.GCEPersistentDiskVolumeSource? = nil,
			gitRepo: core.v1.GitRepoVolumeSource? = nil,
			glusterfs: core.v1.GlusterfsVolumeSource? = nil,
			hostPath: core.v1.HostPathVolumeSource? = nil,
			iscsi: core.v1.ISCSIVolumeSource? = nil,
			name: String,
			nfs: core.v1.NFSVolumeSource? = nil,
			persistentVolumeClaim: core.v1.PersistentVolumeClaimVolumeSource? = nil,
			photonPersistentDisk: core.v1.PhotonPersistentDiskVolumeSource? = nil,
			portworxVolume: core.v1.PortworxVolumeSource? = nil,
			projected: core.v1.ProjectedVolumeSource? = nil,
			quobyte: core.v1.QuobyteVolumeSource? = nil,
			rbd: core.v1.RBDVolumeSource? = nil,
			scaleIO: core.v1.ScaleIOVolumeSource? = nil,
			secret: core.v1.SecretVolumeSource? = nil,
			storageos: core.v1.StorageOSVolumeSource? = nil,
			vsphereVolume: core.v1.VsphereVirtualDiskVolumeSource? = nil
		) {
			self.awsElasticBlockStore = awsElasticBlockStore
			self.azureDisk = azureDisk
			self.azureFile = azureFile
			self.cephfs = cephfs
			self.cinder = cinder
			self.configMap = configMap
			self.csi = csi
			self.downwardAPI = downwardAPI
			self.emptyDir = emptyDir
			self.fc = fc
			self.flexVolume = flexVolume
			self.flocker = flocker
			self.gcePersistentDisk = gcePersistentDisk
			self.gitRepo = gitRepo
			self.glusterfs = glusterfs
			self.hostPath = hostPath
			self.iscsi = iscsi
			self.name = name
			self.nfs = nfs
			self.persistentVolumeClaim = persistentVolumeClaim
			self.photonPersistentDisk = photonPersistentDisk
			self.portworxVolume = portworxVolume
			self.projected = projected
			self.quobyte = quobyte
			self.rbd = rbd
			self.scaleIO = scaleIO
			self.secret = secret
			self.storageos = storageos
			self.vsphereVolume = vsphereVolume
		}
	}
}

