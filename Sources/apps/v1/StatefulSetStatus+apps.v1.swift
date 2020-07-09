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
	/// StatefulSetStatus represents the current state of a StatefulSet.
	///
	struct StatefulSetStatus: KubernetesResource {
		///
		/// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
		///
		public var collisionCount: Int32?

		///
		/// Represents the latest available observations of a statefulset's current state.
		///
		public var conditions: [apps.v1.StatefulSetCondition]?

		///
		/// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
		///
		public var currentReplicas: Int32?

		///
		/// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
		///
		public var currentRevision: String?

		///
		/// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
		///
		public var observedGeneration: Int64?

		///
		/// readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
		///
		public var readyReplicas: Int32?

		///
		/// replicas is the number of Pods created by the StatefulSet controller.
		///
		public var replicas: Int32

		///
		/// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
		///
		public var updateRevision: String?

		///
		/// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
		///
		public var updatedReplicas: Int32?

	}
}

