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

public extension core.v1 {

	///
	/// ReplicationControllerStatus represents the current status of a replication controller.
	///
	struct ReplicationControllerStatus: KubernetesResource, Codable {
	
		///
		/// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
		///
		var availableReplicas: Int32?
	
		///
		/// Represents the latest available observations of a replication controller's current state.
		///
		var conditions: [core.v1.ReplicationControllerCondition]?
	
		///
		/// The number of pods that have labels matching the labels of the pod template of the replication controller.
		///
		var fullyLabeledReplicas: Int32?
	
		///
		/// ObservedGeneration reflects the generation of the most recently observed replication controller.
		///
		var observedGeneration: Int64?
	
		///
		/// The number of ready replicas for this replication controller.
		///
		var readyReplicas: Int32?
	
		///
		/// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
		///
		var replicas: Int32
	
	}
}

