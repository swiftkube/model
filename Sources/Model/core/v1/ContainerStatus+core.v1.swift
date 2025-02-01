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
/// core.v1.ContainerStatus
///

import Foundation

// MARK: - core.v1.ContainerStatus

public extension core.v1 {

	///
	/// ContainerStatus contains details for the current status of this container.
	///
	struct ContainerStatus: KubernetesResource {
		///
		/// AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize.
		///
		public var allocatedResources: [String: Quantity]?
		///
		/// AllocatedResourcesStatus represents the status of various resources allocated for this Pod.
		///
		public var allocatedResourcesStatus: [core.v1.ResourceStatus]?
		///
		/// ContainerID is the ID of the container in the format '<type>://<container_id>'. Where type is a container runtime identifier, returned from Version call of CRI API (for example "containerd").
		///
		public var containerID: String?
		///
		/// Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: https://kubernetes.io/docs/concepts/containers/images.
		///
		public var image: String
		///
		/// ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime.
		///
		public var imageID: String
		///
		/// LastTerminationState holds the last termination state of the container to help debug container crashes and restarts. This field is not populated if the container is still running and RestartCount is 0.
		///
		public var lastState: core.v1.ContainerState?
		///
		/// Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated.
		///
		public var name: String
		///
		/// Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).
		///
		/// The value is typically used to determine whether a container is ready to accept traffic.
		///
		public var ready: Bool
		///
		/// Resources represents the compute resource requests and limits that have been successfully enacted on the running container after it has been started or has been successfully resized.
		///
		public var resources: core.v1.ResourceRequirements?
		///
		/// RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative.
		///
		public var restartCount: Int32
		///
		/// Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false.
		///
		public var started: Bool?
		///
		/// State holds details about the container's current condition.
		///
		public var state: core.v1.ContainerState?
		///
		/// User represents user identity information initially attached to the first process of the container
		///
		public var user: core.v1.ContainerUser?
		///
		/// Status of volume mounts.
		///
		public var volumeMounts: [core.v1.VolumeMountStatus]?
		///
		/// Default memberwise initializer
		///
		public init(
			allocatedResources: [String: Quantity]? = nil,
			allocatedResourcesStatus: [core.v1.ResourceStatus]? = nil,
			containerID: String? = nil,
			image: String,
			imageID: String,
			lastState: core.v1.ContainerState? = nil,
			name: String,
			ready: Bool,
			resources: core.v1.ResourceRequirements? = nil,
			restartCount: Int32,
			started: Bool? = nil,
			state: core.v1.ContainerState? = nil,
			user: core.v1.ContainerUser? = nil,
			volumeMounts: [core.v1.VolumeMountStatus]? = nil
		) {
			self.allocatedResources = allocatedResources
			self.allocatedResourcesStatus = allocatedResourcesStatus
			self.containerID = containerID
			self.image = image
			self.imageID = imageID
			self.lastState = lastState
			self.name = name
			self.ready = ready
			self.resources = resources
			self.restartCount = restartCount
			self.started = started
			self.state = state
			self.user = user
			self.volumeMounts = volumeMounts
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ContainerStatus {

	private enum CodingKeys: String, CodingKey {

		case allocatedResources = "allocatedResources"
		case allocatedResourcesStatus = "allocatedResourcesStatus"
		case containerID = "containerID"
		case image = "image"
		case imageID = "imageID"
		case lastState = "lastState"
		case name = "name"
		case ready = "ready"
		case resources = "resources"
		case restartCount = "restartCount"
		case started = "started"
		case state = "state"
		case user = "user"
		case volumeMounts = "volumeMounts"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allocatedResources = try container.decodeIfPresent([String: Quantity].self, forKey: .allocatedResources)
		self.allocatedResourcesStatus = try container.decodeIfPresent([core.v1.ResourceStatus].self, forKey: .allocatedResourcesStatus)
		self.containerID = try container.decodeIfPresent(String.self, forKey: .containerID)
		self.image = try container.decode(String.self, forKey: .image)
		self.imageID = try container.decode(String.self, forKey: .imageID)
		self.lastState = try container.decodeIfPresent(core.v1.ContainerState.self, forKey: .lastState)
		self.name = try container.decode(String.self, forKey: .name)
		self.ready = try container.decode(Bool.self, forKey: .ready)
		self.resources = try container.decodeIfPresent(core.v1.ResourceRequirements.self, forKey: .resources)
		self.restartCount = try container.decode(Int32.self, forKey: .restartCount)
		self.started = try container.decodeIfPresent(Bool.self, forKey: .started)
		self.state = try container.decodeIfPresent(core.v1.ContainerState.self, forKey: .state)
		self.user = try container.decodeIfPresent(core.v1.ContainerUser.self, forKey: .user)
		self.volumeMounts = try container.decodeIfPresent([core.v1.VolumeMountStatus].self, forKey: .volumeMounts)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allocatedResources, forKey: .allocatedResources)
		try encodingContainer.encode(allocatedResourcesStatus, forKey: .allocatedResourcesStatus)
		try encodingContainer.encode(containerID, forKey: .containerID)
		try encodingContainer.encode(image, forKey: .image)
		try encodingContainer.encode(imageID, forKey: .imageID)
		try encodingContainer.encode(lastState, forKey: .lastState)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(ready, forKey: .ready)
		try encodingContainer.encode(resources, forKey: .resources)
		try encodingContainer.encode(restartCount, forKey: .restartCount)
		try encodingContainer.encode(started, forKey: .started)
		try encodingContainer.encode(state, forKey: .state)
		try encodingContainer.encode(user, forKey: .user)
		try encodingContainer.encode(volumeMounts, forKey: .volumeMounts)
	}
}
