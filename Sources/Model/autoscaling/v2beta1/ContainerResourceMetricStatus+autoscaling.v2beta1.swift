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
/// Kubernetes v1.22.7
/// autoscaling.v2beta1.ContainerResourceMetricStatus
///

import Foundation

public extension autoscaling.v2beta1 {

	///
	/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
	///
	struct ContainerResourceMetricStatus: KubernetesResource {
		///
		/// container is the name of the container in the pods of the scaling target
		///
		public var container: String
		///
		/// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
		///
		public var currentAverageUtilization: Int32?
		///
		/// currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
		///
		public var currentAverageValue: Quantity
		///
		/// name is the name of the resource in question.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			container: String,
			currentAverageUtilization: Int32? = nil,
			currentAverageValue: Quantity,
			name: String
		) {
			self.container = container
			self.currentAverageUtilization = currentAverageUtilization
			self.currentAverageValue = currentAverageValue
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2beta1.ContainerResourceMetricStatus {

	private enum CodingKeys: String, CodingKey {

		case container = "container"
		case currentAverageUtilization = "currentAverageUtilization"
		case currentAverageValue = "currentAverageValue"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.container = try container.decode(String.self, forKey: .container)
		self.currentAverageUtilization = try container.decodeIfPresent(Int32.self, forKey: .currentAverageUtilization)
		self.currentAverageValue = try container.decode(Quantity.self, forKey: .currentAverageValue)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(container, forKey: .container)
		try encodingContainer.encode(currentAverageUtilization, forKey: .currentAverageUtilization)
		try encodingContainer.encode(currentAverageValue, forKey: .currentAverageValue)
		try encodingContainer.encode(name, forKey: .name)
	}
}