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
/// Kubernetes v1.32.0
/// core.v1.NodeSpec
///

import Foundation

// MARK: - core.v1.NodeSpec

public extension core.v1 {

	///
	/// NodeSpec describes the attributes that a node is created with.
	///
	struct NodeSpec: KubernetesResource {
		///
		/// Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed.
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

///
/// Codable conformance
///
public extension core.v1.NodeSpec {

	private enum CodingKeys: String, CodingKey {

		case configSource = "configSource"
		case externalID = "externalID"
		case podCIDR = "podCIDR"
		case podCIDRs = "podCIDRs"
		case providerID = "providerID"
		case taints = "taints"
		case unschedulable = "unschedulable"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.configSource = try container.decodeIfPresent(core.v1.NodeConfigSource.self, forKey: .configSource)
		self.externalID = try container.decodeIfPresent(String.self, forKey: .externalID)
		self.podCIDR = try container.decodeIfPresent(String.self, forKey: .podCIDR)
		self.podCIDRs = try container.decodeIfPresent([String].self, forKey: .podCIDRs)
		self.providerID = try container.decodeIfPresent(String.self, forKey: .providerID)
		self.taints = try container.decodeIfPresent([core.v1.Taint].self, forKey: .taints)
		self.unschedulable = try container.decodeIfPresent(Bool.self, forKey: .unschedulable)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(configSource, forKey: .configSource)
		try encodingContainer.encode(externalID, forKey: .externalID)
		try encodingContainer.encode(podCIDR, forKey: .podCIDR)
		try encodingContainer.encode(podCIDRs, forKey: .podCIDRs)
		try encodingContainer.encode(providerID, forKey: .providerID)
		try encodingContainer.encode(taints, forKey: .taints)
		try encodingContainer.encode(unschedulable, forKey: .unschedulable)
	}
}
