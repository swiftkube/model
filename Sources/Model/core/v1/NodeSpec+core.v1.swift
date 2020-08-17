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
	/// NodeSpec describes the attributes that a node is created with.
	///
	struct NodeSpec: KubernetesResource {
		///
		/// If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field
		///
		public var configSource: core.v1.NodeConfigSource?
		///
		/// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
		///
		public var externalID: String?
		///
		/// PodCIDR represents the pod IP range assigned to the node.
		///
		public var podCIDR: String?
		///
		/// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
		///
		public var podCIDRs: [String]?
		///
		/// ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
		///
		public var providerID: String?
		///
		/// If specified, the node's taints.
		///
		public var taints: [core.v1.Taint]?
		///
		/// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
		///
		public var unschedulable: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			configSource: core.v1.NodeConfigSource? = nil,
			externalID: String? = nil,
			podCIDR: String? = nil,
			podCIDRs: [String]? = nil,
			providerID: String? = nil,
			taints: [core.v1.Taint]? = nil,
			unschedulable: Bool? = nil
		) {
			self.configSource = configSource
			self.externalID = externalID
			self.podCIDR = podCIDR
			self.podCIDRs = podCIDRs
			self.providerID = providerID
			self.taints = taints
			self.unschedulable = unschedulable
		}
	}
}

