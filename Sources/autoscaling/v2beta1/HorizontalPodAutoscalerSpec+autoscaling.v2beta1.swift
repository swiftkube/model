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

public extension autoscaling.v2beta1 {

	///
	/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
	///
	struct HorizontalPodAutoscalerSpec: KubernetesResource {
		///
		/// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
		///
		public var maxReplicas: Int32
		///
		/// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
		///
		public var metrics: [autoscaling.v2beta1.MetricSpec]?
		///
		/// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
		///
		public var minReplicas: Int32?
		///
		/// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
		///
		public var scaleTargetRef: autoscaling.v2beta1.CrossVersionObjectReference
		///
		/// Default memberwise initializer
		///
		public init(
			maxReplicas: Int32, 
			metrics: [autoscaling.v2beta1.MetricSpec]?, 
			minReplicas: Int32?, 
			scaleTargetRef: autoscaling.v2beta1.CrossVersionObjectReference
		) {
			self.maxReplicas = maxReplicas
			self.metrics = metrics
			self.minReplicas = minReplicas
			self.scaleTargetRef = scaleTargetRef
		}
	}
}

