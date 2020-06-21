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

public extension autoscaling.v2beta2 {

	///
	/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
	///
	struct HorizontalPodAutoscalerStatus: KubernetesResource, Codable {
	
		///
		/// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
		///
		var conditions: [autoscaling.v2beta2.HorizontalPodAutoscalerCondition]
	
		///
		/// currentMetrics is the last read state of the metrics used by this autoscaler.
		///
		var currentMetrics: [autoscaling.v2beta2.MetricStatus]?
	
		///
		/// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
		///
		var currentReplicas: Int32
	
		///
		/// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
		///
		var desiredReplicas: Int32
	
		///
		/// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
		///
		var lastScaleTime: String?
	
		///
		/// observedGeneration is the most recent generation observed by this autoscaler.
		///
		var observedGeneration: Int64?
	
	}
}

