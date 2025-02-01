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
/// resource.v1alpha3.ResourceSliceSpec
///

import Foundation

// MARK: - resource.v1alpha3.ResourceSliceSpec

public extension resource.v1alpha3 {

	///
	/// ResourceSliceSpec contains the information published by the driver in one ResourceSlice.
	///
	struct ResourceSliceSpec: KubernetesResource {
		///
		/// AllNodes indicates that all nodes have access to the resources in the pool.
		///
		/// Exactly one of NodeName, NodeSelector and AllNodes must be set.
		///
		public var allNodes: Bool?
		///
		/// Devices lists some or all of the devices in this pool.
		///
		/// Must not have more than 128 entries.
		///
		public var devices: [resource.v1alpha3.Device]?
		///
		/// Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
		///
		/// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. This field is immutable.
		///
		public var driver: String
		///
		/// NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
		///
		/// This field can be used to limit access from nodes to ResourceSlices with the same node name. It also indicates to autoscalers that adding new nodes of the same type as some old node might also make new resources available.
		///
		/// Exactly one of NodeName, NodeSelector and AllNodes must be set. This field is immutable.
		///
		public var nodeName: String?
		///
		/// NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
		///
		/// Must use exactly one term.
		///
		/// Exactly one of NodeName, NodeSelector and AllNodes must be set.
		///
		public var nodeSelector: core.v1.NodeSelector?
		///
		/// Pool describes the pool that this ResourceSlice belongs to.
		///
		public var pool: resource.v1alpha3.ResourcePool
		///
		/// Default memberwise initializer
		///
		public init(
			allNodes: Bool? = nil,
			devices: [resource.v1alpha3.Device]? = nil,
			driver: String,
			nodeName: String? = nil,
			nodeSelector: core.v1.NodeSelector? = nil,
			pool: resource.v1alpha3.ResourcePool
		) {
			self.allNodes = allNodes
			self.devices = devices
			self.driver = driver
			self.nodeName = nodeName
			self.nodeSelector = nodeSelector
			self.pool = pool
		}
	}
}

///
/// Codable conformance
///
public extension resource.v1alpha3.ResourceSliceSpec {

	private enum CodingKeys: String, CodingKey {

		case allNodes = "allNodes"
		case devices = "devices"
		case driver = "driver"
		case nodeName = "nodeName"
		case nodeSelector = "nodeSelector"
		case pool = "pool"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allNodes = try container.decodeIfPresent(Bool.self, forKey: .allNodes)
		self.devices = try container.decodeIfPresent([resource.v1alpha3.Device].self, forKey: .devices)
		self.driver = try container.decode(String.self, forKey: .driver)
		self.nodeName = try container.decodeIfPresent(String.self, forKey: .nodeName)
		self.nodeSelector = try container.decodeIfPresent(core.v1.NodeSelector.self, forKey: .nodeSelector)
		self.pool = try container.decode(resource.v1alpha3.ResourcePool.self, forKey: .pool)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allNodes, forKey: .allNodes)
		try encodingContainer.encode(devices, forKey: .devices)
		try encodingContainer.encode(driver, forKey: .driver)
		try encodingContainer.encode(nodeName, forKey: .nodeName)
		try encodingContainer.encode(nodeSelector, forKey: .nodeSelector)
		try encodingContainer.encode(pool, forKey: .pool)
	}
}
