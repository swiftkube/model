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
/// autoscaling.v2.HorizontalPodAutoscalerSpec
///

import Foundation

// MARK: - autoscaling.v2.HorizontalPodAutoscalerSpec

public extension autoscaling.v2 {

	///
	/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
	///
	struct HorizontalPodAutoscalerSpec: KubernetesResource {
		///
		/// behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
		///
		public var behavior: autoscaling.v2.HorizontalPodAutoscalerBehavior?
		///
		/// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
		///
		public var maxReplicas: Int32
		///
		/// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
		///
		public var metrics: [autoscaling.v2.MetricSpec]?
		///
		/// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
		///
		public var minReplicas: Int32?
		///
		/// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
		///
		public var scaleTargetRef: autoscaling.v2.CrossVersionObjectReference
		///
		/// Default memberwise initializer
		///
		public init(
			behavior: autoscaling.v2.HorizontalPodAutoscalerBehavior? = nil,
			maxReplicas: Int32,
			metrics: [autoscaling.v2.MetricSpec]? = nil,
			minReplicas: Int32? = nil,
			scaleTargetRef: autoscaling.v2.CrossVersionObjectReference
		) {
			self.behavior = behavior
			self.maxReplicas = maxReplicas
			self.metrics = metrics
			self.minReplicas = minReplicas
			self.scaleTargetRef = scaleTargetRef
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2.HorizontalPodAutoscalerSpec {

	private enum CodingKeys: String, CodingKey {

		case behavior = "behavior"
		case maxReplicas = "maxReplicas"
		case metrics = "metrics"
		case minReplicas = "minReplicas"
		case scaleTargetRef = "scaleTargetRef"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.behavior = try container.decodeIfPresent(autoscaling.v2.HorizontalPodAutoscalerBehavior.self, forKey: .behavior)
		self.maxReplicas = try container.decode(Int32.self, forKey: .maxReplicas)
		self.metrics = try container.decodeIfPresent([autoscaling.v2.MetricSpec].self, forKey: .metrics)
		self.minReplicas = try container.decodeIfPresent(Int32.self, forKey: .minReplicas)
		self.scaleTargetRef = try container.decode(autoscaling.v2.CrossVersionObjectReference.self, forKey: .scaleTargetRef)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(behavior, forKey: .behavior)
		try encodingContainer.encode(maxReplicas, forKey: .maxReplicas)
		try encodingContainer.encode(metrics, forKey: .metrics)
		try encodingContainer.encode(minReplicas, forKey: .minReplicas)
		try encodingContainer.encode(scaleTargetRef, forKey: .scaleTargetRef)
	}
}
