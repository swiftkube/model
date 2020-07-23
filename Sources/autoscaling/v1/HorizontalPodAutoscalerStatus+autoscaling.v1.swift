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
	/// current status of a horizontal pod autoscaler
	///
	struct HorizontalPodAutoscalerStatus: KubernetesResource {
		///
		/// current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
		///
		public var currentCPUUtilizationPercentage: Int32?
		///
		/// current number of replicas of pods managed by this autoscaler.
		///
		public var currentReplicas: Int32
		///
		/// desired number of replicas of pods managed by this autoscaler.
		///
		public var desiredReplicas: Int32
		///
		/// last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
		///
		public var lastScaleTime: String?
		///
		/// most recent generation observed by this autoscaler.
		///
		public var observedGeneration: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			currentCPUUtilizationPercentage: Int32?, 
			currentReplicas: Int32, 
			desiredReplicas: Int32, 
			lastScaleTime: String?, 
			observedGeneration: Int64?
		) {
			self.currentCPUUtilizationPercentage = currentCPUUtilizationPercentage
			self.currentReplicas = currentReplicas
			self.desiredReplicas = desiredReplicas
			self.lastScaleTime = lastScaleTime
			self.observedGeneration = observedGeneration
		}
	}
}

