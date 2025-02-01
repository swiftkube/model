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
/// Kubernetes v1.32.0
/// autoscaling.v1.HorizontalPodAutoscalerStatus
///

import Foundation

// MARK: - autoscaling.v1.HorizontalPodAutoscalerStatus

public extension autoscaling.v1 {

	///
	/// current status of a horizontal pod autoscaler
	///
	struct HorizontalPodAutoscalerStatus: KubernetesResource {
		///
		/// currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
		///
		public var currentCPUUtilizationPercentage: Int32?
		///
		/// currentReplicas is the current number of replicas of pods managed by this autoscaler.
		///
		public var currentReplicas: Int32
		///
		/// desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
		///
		public var desiredReplicas: Int32
		///
		/// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
		///
		public var lastScaleTime: Date?
		///
		/// observedGeneration is the most recent generation observed by this autoscaler.
		///
		public var observedGeneration: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			currentCPUUtilizationPercentage: Int32? = nil,
			currentReplicas: Int32,
			desiredReplicas: Int32,
			lastScaleTime: Date? = nil,
			observedGeneration: Int64? = nil
		) {
			self.currentCPUUtilizationPercentage = currentCPUUtilizationPercentage
			self.currentReplicas = currentReplicas
			self.desiredReplicas = desiredReplicas
			self.lastScaleTime = lastScaleTime
			self.observedGeneration = observedGeneration
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v1.HorizontalPodAutoscalerStatus {

	private enum CodingKeys: String, CodingKey {

		case currentCPUUtilizationPercentage = "currentCPUUtilizationPercentage"
		case currentReplicas = "currentReplicas"
		case desiredReplicas = "desiredReplicas"
		case lastScaleTime = "lastScaleTime"
		case observedGeneration = "observedGeneration"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.currentCPUUtilizationPercentage = try container.decodeIfPresent(Int32.self, forKey: .currentCPUUtilizationPercentage)
		self.currentReplicas = try container.decode(Int32.self, forKey: .currentReplicas)
		self.desiredReplicas = try container.decode(Int32.self, forKey: .desiredReplicas)
		self.lastScaleTime = try container.decodeIfPresent(Date.self, forKey: .lastScaleTime)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(currentCPUUtilizationPercentage, forKey: .currentCPUUtilizationPercentage)
		try encodingContainer.encode(currentReplicas, forKey: .currentReplicas)
		try encodingContainer.encode(desiredReplicas, forKey: .desiredReplicas)
		try encodingContainer.encode(lastScaleTime, forKey: .lastScaleTime)
		try encodingContainer.encode(observedGeneration, forKey: .observedGeneration)
	}
}
