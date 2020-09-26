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

public extension apps.v1 {

	///
	/// DeploymentStatus is the most recently observed status of the Deployment.
	///
	struct DeploymentStatus: KubernetesResource {
		///
		/// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
		///
		public var availableReplicas: Int32?
		///
		/// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
		///
		public var collisionCount: Int32?
		///
		/// Represents the latest available observations of a deployment's current state.
		///
		public var conditions: [apps.v1.DeploymentCondition]?
		///
		/// The generation observed by the deployment controller.
		///
		public var observedGeneration: Int64?
		///
		/// Total number of ready pods targeted by this deployment.
		///
		public var readyReplicas: Int32?
		///
		/// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
		///
		public var replicas: Int32?
		///
		/// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
		///
		public var unavailableReplicas: Int32?
		///
		/// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
		///
		public var updatedReplicas: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			availableReplicas: Int32? = nil,
			collisionCount: Int32? = nil,
			conditions: [apps.v1.DeploymentCondition]? = nil,
			observedGeneration: Int64? = nil,
			readyReplicas: Int32? = nil,
			replicas: Int32? = nil,
			unavailableReplicas: Int32? = nil,
			updatedReplicas: Int32? = nil
		) {
			self.availableReplicas = availableReplicas
			self.collisionCount = collisionCount
			self.conditions = conditions
			self.observedGeneration = observedGeneration
			self.readyReplicas = readyReplicas
			self.replicas = replicas
			self.unavailableReplicas = unavailableReplicas
			self.updatedReplicas = updatedReplicas
		}
	}
}

///
/// Codable conformance
///
extension apps.v1.DeploymentStatus {

	private enum CodingKeys: String, CodingKey {
		case availableReplicas = "availableReplicas"
		case collisionCount = "collisionCount"
		case conditions = "conditions"
		case observedGeneration = "observedGeneration"
		case readyReplicas = "readyReplicas"
		case replicas = "replicas"
		case unavailableReplicas = "unavailableReplicas"
		case updatedReplicas = "updatedReplicas"
	}

}

