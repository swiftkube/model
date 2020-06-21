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
	/// ContainerStatus contains details for the current status of this container.
	///
	struct ContainerStatus: KubernetesResource, Codable {
	
		///
		/// Container's ID in the format 'docker://<container_id>'.
		///
		var containerID: String?
	
		///
		/// The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images
		///
		var image: String
	
		///
		/// ImageID of the container's image.
		///
		var imageID: String
	
		///
		/// Details about the container's last termination condition.
		///
		var lastState: core.v1.ContainerState?
	
		///
		/// This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
		///
		var name: String
	
		///
		/// Specifies whether the container has passed its readiness probe.
		///
		var ready: Bool
	
		///
		/// The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
		///
		var restartCount: Int32
	
		///
		/// Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
		///
		var started: Bool?
	
		///
		/// Details about the container's current condition.
		///
		var state: core.v1.ContainerState?
	
	}
}

