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
/// core.v1.PodAffinityTerm
///

import Foundation

public extension core.v1 {

	///
	/// Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
	///
	struct PodAffinityTerm: KubernetesResource {
		///
		/// A label query over a set of resources, in this case pods.
		///
		public var labelSelector: meta.v1.LabelSelector?
		///
		/// namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means "this pod's namespace"
		///
		public var namespaces: [String]?
		///
		/// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
		///
		public var topologyKey: String
		///
		/// Default memberwise initializer
		///
		public init(
			labelSelector: meta.v1.LabelSelector? = nil,
			namespaces: [String]? = nil,
			topologyKey: String
		) {
			self.labelSelector = labelSelector
			self.namespaces = namespaces
			self.topologyKey = topologyKey
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodAffinityTerm {

	private enum CodingKeys: String, CodingKey {

		case labelSelector = "labelSelector"
		case namespaces = "namespaces"
		case topologyKey = "topologyKey"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.labelSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .labelSelector)
		self.namespaces = try container.decodeIfPresent([String].self, forKey: .namespaces)
		self.topologyKey = try container.decode(String.self, forKey: .topologyKey)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(labelSelector, forKey: .labelSelector)
		try container.encode(namespaces, forKey: .namespaces)
		try container.encode(topologyKey, forKey: .topologyKey)
	}
}
