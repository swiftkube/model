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
	/// Affinity is a group of affinity scheduling rules.
	///
	struct Affinity: KubernetesResource {
		///
		/// Describes node affinity scheduling rules for the pod.
		///
		public var nodeAffinity: core.v1.NodeAffinity?
		///
		/// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
		///
		public var podAffinity: core.v1.PodAffinity?
		///
		/// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
		///
		public var podAntiAffinity: core.v1.PodAntiAffinity?
		///
		/// Default memberwise initializer
		///
		public init(
			nodeAffinity: core.v1.NodeAffinity? = nil,
			podAffinity: core.v1.PodAffinity? = nil,
			podAntiAffinity: core.v1.PodAntiAffinity? = nil
		) {
			self.nodeAffinity = nodeAffinity
			self.podAffinity = podAffinity
			self.podAntiAffinity = podAntiAffinity
		}
	}
}

///
/// Codable conformance
///
extension core.v1.Affinity {

	private enum CodingKeys: String, CodingKey {
		case nodeAffinity = "nodeAffinity"
		case podAffinity = "podAffinity"
		case podAntiAffinity = "podAntiAffinity"
	}

}

