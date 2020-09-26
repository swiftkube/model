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

public extension autoscaling.v1 {

	///
	/// specification of a horizontal pod autoscaler.
	///
	struct HorizontalPodAutoscalerSpec: KubernetesResource {
		///
		/// upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
		///
		public var maxReplicas: Int32
		///
		/// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
		///
		public var minReplicas: Int32?
		///
		/// reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
		///
		public var scaleTargetRef: autoscaling.v1.CrossVersionObjectReference
		///
		/// target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
		///
		public var targetCPUUtilizationPercentage: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			maxReplicas: Int32,
			minReplicas: Int32? = nil,
			scaleTargetRef: autoscaling.v1.CrossVersionObjectReference,
			targetCPUUtilizationPercentage: Int32? = nil
		) {
			self.maxReplicas = maxReplicas
			self.minReplicas = minReplicas
			self.scaleTargetRef = scaleTargetRef
			self.targetCPUUtilizationPercentage = targetCPUUtilizationPercentage
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v1.HorizontalPodAutoscalerSpec {

	private enum CodingKeys: String, CodingKey {
		case maxReplicas = "maxReplicas"
		case minReplicas = "minReplicas"
		case scaleTargetRef = "scaleTargetRef"
		case targetCPUUtilizationPercentage = "targetCPUUtilizationPercentage"
	}

}

