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

public extension extensions.v1beta1 {

	///
	/// PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.
	///
	struct PodSecurityPolicySpec: KubernetesResource {
		///
		/// allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
		///
		public var allowPrivilegeEscalation: Bool?
		///
		/// AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.
		///
		public var allowedCSIDrivers: [extensions.v1beta1.AllowedCSIDriver]?
		///
		/// allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
		///
		public var allowedCapabilities: [String]?
		///
		/// allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
		///
		public var allowedFlexVolumes: [extensions.v1beta1.AllowedFlexVolume]?
		///
		/// allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
		///
		public var allowedHostPaths: [extensions.v1beta1.AllowedHostPath]?
		///
		/// AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
		///
		public var allowedProcMountTypes: [String]?
		///
		/// allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
		/// 
		/// Examples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.
		///
		public var allowedUnsafeSysctls: [String]?
		///
		/// defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
		///
		public var defaultAddCapabilities: [String]?
		///
		/// defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
		///
		public var defaultAllowPrivilegeEscalation: Bool?
		///
		/// forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
		/// 
		/// Examples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.
		///
		public var forbiddenSysctls: [String]?
		///
		/// fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
		///
		public var fsGroup: extensions.v1beta1.FSGroupStrategyOptions
		///
		/// hostIPC determines if the policy allows the use of HostIPC in the pod spec.
		///
		public var hostIPC: Bool?
		///
		/// hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
		///
		public var hostNetwork: Bool?
		///
		/// hostPID determines if the policy allows the use of HostPID in the pod spec.
		///
		public var hostPID: Bool?
		///
		/// hostPorts determines which host port ranges are allowed to be exposed.
		///
		public var hostPorts: [extensions.v1beta1.HostPortRange]?
		///
		/// privileged determines if a pod can request to be run as privileged.
		///
		public var privileged: Bool?
		///
		/// readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
		///
		public var readOnlyRootFilesystem: Bool?
		///
		/// requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
		///
		public var requiredDropCapabilities: [String]?
		///
		/// RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
		///
		public var runAsGroup: extensions.v1beta1.RunAsGroupStrategyOptions?
		///
		/// runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
		///
		public var runAsUser: extensions.v1beta1.RunAsUserStrategyOptions
		///
		/// runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
		///
		public var runtimeClass: extensions.v1beta1.RuntimeClassStrategyOptions?
		///
		/// seLinux is the strategy that will dictate the allowable labels that may be set.
		///
		public var seLinux: extensions.v1beta1.SELinuxStrategyOptions
		///
		/// supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
		///
		public var supplementalGroups: extensions.v1beta1.SupplementalGroupsStrategyOptions
		///
		/// volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
		///
		public var volumes: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			allowPrivilegeEscalation: Bool? = nil,
			allowedCSIDrivers: [extensions.v1beta1.AllowedCSIDriver]? = nil,
			allowedCapabilities: [String]? = nil,
			allowedFlexVolumes: [extensions.v1beta1.AllowedFlexVolume]? = nil,
			allowedHostPaths: [extensions.v1beta1.AllowedHostPath]? = nil,
			allowedProcMountTypes: [String]? = nil,
			allowedUnsafeSysctls: [String]? = nil,
			defaultAddCapabilities: [String]? = nil,
			defaultAllowPrivilegeEscalation: Bool? = nil,
			forbiddenSysctls: [String]? = nil,
			fsGroup: extensions.v1beta1.FSGroupStrategyOptions,
			hostIPC: Bool? = nil,
			hostNetwork: Bool? = nil,
			hostPID: Bool? = nil,
			hostPorts: [extensions.v1beta1.HostPortRange]? = nil,
			privileged: Bool? = nil,
			readOnlyRootFilesystem: Bool? = nil,
			requiredDropCapabilities: [String]? = nil,
			runAsGroup: extensions.v1beta1.RunAsGroupStrategyOptions? = nil,
			runAsUser: extensions.v1beta1.RunAsUserStrategyOptions,
			runtimeClass: extensions.v1beta1.RuntimeClassStrategyOptions? = nil,
			seLinux: extensions.v1beta1.SELinuxStrategyOptions,
			supplementalGroups: extensions.v1beta1.SupplementalGroupsStrategyOptions,
			volumes: [String]? = nil
		) {
			self.allowPrivilegeEscalation = allowPrivilegeEscalation
			self.allowedCSIDrivers = allowedCSIDrivers
			self.allowedCapabilities = allowedCapabilities
			self.allowedFlexVolumes = allowedFlexVolumes
			self.allowedHostPaths = allowedHostPaths
			self.allowedProcMountTypes = allowedProcMountTypes
			self.allowedUnsafeSysctls = allowedUnsafeSysctls
			self.defaultAddCapabilities = defaultAddCapabilities
			self.defaultAllowPrivilegeEscalation = defaultAllowPrivilegeEscalation
			self.forbiddenSysctls = forbiddenSysctls
			self.fsGroup = fsGroup
			self.hostIPC = hostIPC
			self.hostNetwork = hostNetwork
			self.hostPID = hostPID
			self.hostPorts = hostPorts
			self.privileged = privileged
			self.readOnlyRootFilesystem = readOnlyRootFilesystem
			self.requiredDropCapabilities = requiredDropCapabilities
			self.runAsGroup = runAsGroup
			self.runAsUser = runAsUser
			self.runtimeClass = runtimeClass
			self.seLinux = seLinux
			self.supplementalGroups = supplementalGroups
			self.volumes = volumes
		}
	}
}

