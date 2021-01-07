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
/// Kubernetes v1.18.13
/// core.v1.TopologySpreadConstraint
///

import Foundation

public extension core.v1 {

	///
	/// TopologySpreadConstraint specifies how to spread matching pods among the given topology.
	///
	struct TopologySpreadConstraint: KubernetesResource {
		///
		/// LabelSelector is used to find matching pods. Pods that match this label selector are counted to determine the number of pods in their corresponding topology domain.
		///
		public var labelSelector: meta.v1.LabelSelector?
		///
		/// MaxSkew describes the degree to which pods may be unevenly distributed. It's the maximum permitted difference between the number of matching pods in any two topology domains of a given topology type. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 1/1/0: | zone1 | zone2 | zone3 | |   P   |   P   |       | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 1/1/1; scheduling it onto zone1(zone2) would make the ActualSkew(2-0) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. It's a required field. Default value is 1 and 0 is not allowed.
		///
		public var maxSkew: Int32
		///
		/// TopologyKey is the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. We consider each <key, value> as a "bucket", and try to put balanced number of pods into each bucket. It's a required field.
		///
		public var topologyKey: String
		///
		/// WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread constraint. - DoNotSchedule (default) tells the scheduler not to schedule it - ScheduleAnyway tells the scheduler to still schedule it It's considered as "Unsatisfiable" if and only if placing incoming pod on any topology violates "MaxSkew". For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field.
		///
		public var whenUnsatisfiable: String
		///
		/// Default memberwise initializer
		///
		public init(
			labelSelector: meta.v1.LabelSelector? = nil,
			maxSkew: Int32,
			topologyKey: String,
			whenUnsatisfiable: String
		) {
			self.labelSelector = labelSelector
			self.maxSkew = maxSkew
			self.topologyKey = topologyKey
			self.whenUnsatisfiable = whenUnsatisfiable
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.TopologySpreadConstraint {

	private enum CodingKeys: String, CodingKey {

		case labelSelector = "labelSelector"
		case maxSkew = "maxSkew"
		case topologyKey = "topologyKey"
		case whenUnsatisfiable = "whenUnsatisfiable"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.labelSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .labelSelector)
		self.maxSkew = try container.decode(Int32.self, forKey: .maxSkew)
		self.topologyKey = try container.decode(String.self, forKey: .topologyKey)
		self.whenUnsatisfiable = try container.decode(String.self, forKey: .whenUnsatisfiable)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(labelSelector, forKey: .labelSelector)
		try container.encode(maxSkew, forKey: .maxSkew)
		try container.encode(topologyKey, forKey: .topologyKey)
		try container.encode(whenUnsatisfiable, forKey: .whenUnsatisfiable)
	}
}
