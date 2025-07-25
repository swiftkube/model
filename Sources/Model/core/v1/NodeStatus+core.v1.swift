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
/// Kubernetes v1.33.3
/// core.v1.NodeStatus
///

import Foundation

// MARK: - core.v1.NodeStatus

public extension core.v1 {

	///
	/// NodeStatus is information about the current status of a node.
	///
	struct NodeStatus: KubernetesResource {
		///
		/// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/reference/node/node-status/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change during the lifetime of a Node. However, there are some exceptions where this may not be possible, such as Pods that inherit a Node's address in its own status or consumers of the downward API (status.hostIP).
		///
		public var addresses: [core.v1.NodeAddress]?
		///
		/// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
		///
		public var allocatable: [String: Quantity]?
		///
		/// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/reference/node/node-status/#capacity
		///
		public var capacity: [String: Quantity]?
		///
		/// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/reference/node/node-status/#condition
		///
		public var conditions: [core.v1.NodeCondition]?
		///
		/// Status of the config assigned to the node via the dynamic Kubelet config feature.
		///
		public var config: core.v1.NodeConfigStatus?
		///
		/// Endpoints of daemons running on the Node.
		///
		public var daemonEndpoints: core.v1.NodeDaemonEndpoints?
		///
		/// Features describes the set of features implemented by the CRI implementation.
		///
		public var features: core.v1.NodeFeatures?
		///
		/// List of container images on this node
		///
		public var images: [core.v1.ContainerImage]?
		///
		/// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/reference/node/node-status/#info
		///
		public var nodeInfo: core.v1.NodeSystemInfo?
		///
		/// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
		///
		public var phase: String?
		///
		/// The available runtime handlers.
		///
		public var runtimeHandlers: [core.v1.NodeRuntimeHandler]?
		///
		/// List of volumes that are attached to the node.
		///
		public var volumesAttached: [core.v1.AttachedVolume]?
		///
		/// List of attachable volumes in use (mounted) by the node.
		///
		public var volumesInUse: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			addresses: [core.v1.NodeAddress]? = nil,
			allocatable: [String: Quantity]? = nil,
			capacity: [String: Quantity]? = nil,
			conditions: [core.v1.NodeCondition]? = nil,
			config: core.v1.NodeConfigStatus? = nil,
			daemonEndpoints: core.v1.NodeDaemonEndpoints? = nil,
			features: core.v1.NodeFeatures? = nil,
			images: [core.v1.ContainerImage]? = nil,
			nodeInfo: core.v1.NodeSystemInfo? = nil,
			phase: String? = nil,
			runtimeHandlers: [core.v1.NodeRuntimeHandler]? = nil,
			volumesAttached: [core.v1.AttachedVolume]? = nil,
			volumesInUse: [String]? = nil
		) {
			self.addresses = addresses
			self.allocatable = allocatable
			self.capacity = capacity
			self.conditions = conditions
			self.config = config
			self.daemonEndpoints = daemonEndpoints
			self.features = features
			self.images = images
			self.nodeInfo = nodeInfo
			self.phase = phase
			self.runtimeHandlers = runtimeHandlers
			self.volumesAttached = volumesAttached
			self.volumesInUse = volumesInUse
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeStatus {

	private enum CodingKeys: String, CodingKey {

		case addresses = "addresses"
		case allocatable = "allocatable"
		case capacity = "capacity"
		case conditions = "conditions"
		case config = "config"
		case daemonEndpoints = "daemonEndpoints"
		case features = "features"
		case images = "images"
		case nodeInfo = "nodeInfo"
		case phase = "phase"
		case runtimeHandlers = "runtimeHandlers"
		case volumesAttached = "volumesAttached"
		case volumesInUse = "volumesInUse"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.addresses = try container.decodeIfPresent([core.v1.NodeAddress].self, forKey: .addresses)
		self.allocatable = try container.decodeIfPresent([String: Quantity].self, forKey: .allocatable)
		self.capacity = try container.decodeIfPresent([String: Quantity].self, forKey: .capacity)
		self.conditions = try container.decodeIfPresent([core.v1.NodeCondition].self, forKey: .conditions)
		self.config = try container.decodeIfPresent(core.v1.NodeConfigStatus.self, forKey: .config)
		self.daemonEndpoints = try container.decodeIfPresent(core.v1.NodeDaemonEndpoints.self, forKey: .daemonEndpoints)
		self.features = try container.decodeIfPresent(core.v1.NodeFeatures.self, forKey: .features)
		self.images = try container.decodeIfPresent([core.v1.ContainerImage].self, forKey: .images)
		self.nodeInfo = try container.decodeIfPresent(core.v1.NodeSystemInfo.self, forKey: .nodeInfo)
		self.phase = try container.decodeIfPresent(String.self, forKey: .phase)
		self.runtimeHandlers = try container.decodeIfPresent([core.v1.NodeRuntimeHandler].self, forKey: .runtimeHandlers)
		self.volumesAttached = try container.decodeIfPresent([core.v1.AttachedVolume].self, forKey: .volumesAttached)
		self.volumesInUse = try container.decodeIfPresent([String].self, forKey: .volumesInUse)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(addresses, forKey: .addresses)
		try encodingContainer.encode(allocatable, forKey: .allocatable)
		try encodingContainer.encode(capacity, forKey: .capacity)
		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(config, forKey: .config)
		try encodingContainer.encode(daemonEndpoints, forKey: .daemonEndpoints)
		try encodingContainer.encode(features, forKey: .features)
		try encodingContainer.encode(images, forKey: .images)
		try encodingContainer.encode(nodeInfo, forKey: .nodeInfo)
		try encodingContainer.encode(phase, forKey: .phase)
		try encodingContainer.encode(runtimeHandlers, forKey: .runtimeHandlers)
		try encodingContainer.encode(volumesAttached, forKey: .volumesAttached)
		try encodingContainer.encode(volumesInUse, forKey: .volumesInUse)
	}
}
