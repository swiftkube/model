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
/// Kubernetes v1.20.9
/// storage.v1.CSINodeDriver
///

import Foundation

public extension storage.v1 {

	///
	/// CSINodeDriver holds information about the specification of one CSI driver installed on a node
	///
	struct CSINodeDriver: KubernetesResource {
		///
		/// allocatable represents the volume resources of a node that are available for scheduling. This field is beta.
		///
		public var allocatable: storage.v1.VolumeNodeResources?
		///
		/// This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
		///
		public var name: String
		///
		/// nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
		///
		public var nodeID: String
		///
		/// topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. "company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
		///
		public var topologyKeys: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			allocatable: storage.v1.VolumeNodeResources? = nil,
			name: String,
			nodeID: String,
			topologyKeys: [String]? = nil
		) {
			self.allocatable = allocatable
			self.name = name
			self.nodeID = nodeID
			self.topologyKeys = topologyKeys
		}
	}
}

///
/// Codable conformance
///
public extension storage.v1.CSINodeDriver {

	private enum CodingKeys: String, CodingKey {

		case allocatable = "allocatable"
		case name = "name"
		case nodeID = "nodeID"
		case topologyKeys = "topologyKeys"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allocatable = try container.decodeIfPresent(storage.v1.VolumeNodeResources.self, forKey: .allocatable)
		self.name = try container.decode(String.self, forKey: .name)
		self.nodeID = try container.decode(String.self, forKey: .nodeID)
		self.topologyKeys = try container.decodeIfPresent([String].self, forKey: .topologyKeys)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allocatable, forKey: .allocatable)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(nodeID, forKey: .nodeID)
		try encodingContainer.encode(topologyKeys, forKey: .topologyKeys)
	}
}
