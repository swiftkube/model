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
/// autoscaling.v2beta2.ContainerResourceMetricSource
///

import Foundation

public extension autoscaling.v2beta2 {

	///
	/// ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
	///
	struct ContainerResourceMetricSource: KubernetesResource {
		///
		/// container is the name of the container in the pods of the scaling target
		///
		public var container: String
		///
		/// name is the name of the resource in question.
		///
		public var name: String
		///
		/// target specifies the target value for the given metric
		///
		public var target: autoscaling.v2beta2.MetricTarget
		///
		/// Default memberwise initializer
		///
		public init(
			container: String,
			name: String,
			target: autoscaling.v2beta2.MetricTarget
		) {
			self.container = container
			self.name = name
			self.target = target
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2beta2.ContainerResourceMetricSource {

	private enum CodingKeys: String, CodingKey {

		case container = "container"
		case name = "name"
		case target = "target"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.container = try container.decode(String.self, forKey: .container)
		self.name = try container.decode(String.self, forKey: .name)
		self.target = try container.decode(autoscaling.v2beta2.MetricTarget.self, forKey: .target)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(container, forKey: .container)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(target, forKey: .target)
	}
}
