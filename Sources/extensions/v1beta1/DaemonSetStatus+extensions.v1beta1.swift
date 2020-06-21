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

public extension extensions.v1beta1 {

	///
	/// DaemonSetStatus represents the current status of a daemon set.
	///
	struct DaemonSetStatus: KubernetesResource, Codable {
	
		///
		/// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
		///
		var collisionCount: Int32?
	
		///
		/// Represents the latest available observations of a DaemonSet's current state.
		///
		var conditions: [extensions.v1beta1.DaemonSetCondition]?
	
		///
		/// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		var currentNumberScheduled: Int32
	
		///
		/// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		var desiredNumberScheduled: Int32
	
		///
		/// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
		///
		var numberAvailable: Int32?
	
		///
		/// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		var numberMisscheduled: Int32
	
		///
		/// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
		///
		var numberReady: Int32
	
		///
		/// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
		///
		var numberUnavailable: Int32?
	
		///
		/// The most recent generation observed by the daemon set controller.
		///
		var observedGeneration: Int64?
	
		///
		/// The total number of nodes that are running updated daemon pod
		///
		var updatedNumberScheduled: Int32?
	
	}
}

