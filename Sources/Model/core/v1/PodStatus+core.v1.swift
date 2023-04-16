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
/// Kubernetes v1.26.4
/// core.v1.PodStatus
///

import Foundation

// MARK: - core.v1.PodStatus

public extension core.v1 {

	///
	/// PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
	///
	struct PodStatus: KubernetesResource {
		///
		/// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
		///
		public var conditions: [core.v1.PodCondition]?
		///
		/// The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
		///
		public var containerStatuses: [core.v1.ContainerStatus]?
		///
		/// Status for any ephemeral containers that have run in this pod.
		///
		public var ephemeralContainerStatuses: [core.v1.ContainerStatus]?
		///
		/// IP address of the host to which the pod is assigned. Empty if not yet scheduled.
		///
		public var hostIP: String?
		///
		/// The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
		///
		public var initContainerStatuses: [core.v1.ContainerStatus]?
		///
		/// A human readable message indicating details about why the pod is in this condition.
		///
		public var message: String?
		///
		/// nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
		///
		public var nominatedNodeName: String?
		///
		/// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
		///
		/// Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
		///
		/// More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase
		///
		///
		///
		public var phase: String?
		///
		/// IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
		///
		public var podIP: String?
		///
		/// podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
		///
		public var podIPs: [core.v1.PodIP]?
		///
		/// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md
		///
		///
		///
		public var qosClass: String?
		///
		/// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
		///
		public var reason: String?
		///
		/// RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
		///
		public var startTime: Date?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [core.v1.PodCondition]? = nil,
			containerStatuses: [core.v1.ContainerStatus]? = nil,
			ephemeralContainerStatuses: [core.v1.ContainerStatus]? = nil,
			hostIP: String? = nil,
			initContainerStatuses: [core.v1.ContainerStatus]? = nil,
			message: String? = nil,
			nominatedNodeName: String? = nil,
			phase: String? = nil,
			podIP: String? = nil,
			podIPs: [core.v1.PodIP]? = nil,
			qosClass: String? = nil,
			reason: String? = nil,
			startTime: Date? = nil
		) {
			self.conditions = conditions
			self.containerStatuses = containerStatuses
			self.ephemeralContainerStatuses = ephemeralContainerStatuses
			self.hostIP = hostIP
			self.initContainerStatuses = initContainerStatuses
			self.message = message
			self.nominatedNodeName = nominatedNodeName
			self.phase = phase
			self.podIP = podIP
			self.podIPs = podIPs
			self.qosClass = qosClass
			self.reason = reason
			self.startTime = startTime
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
		case containerStatuses = "containerStatuses"
		case ephemeralContainerStatuses = "ephemeralContainerStatuses"
		case hostIP = "hostIP"
		case initContainerStatuses = "initContainerStatuses"
		case message = "message"
		case nominatedNodeName = "nominatedNodeName"
		case phase = "phase"
		case podIP = "podIP"
		case podIPs = "podIPs"
		case qosClass = "qosClass"
		case reason = "reason"
		case startTime = "startTime"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decodeIfPresent([core.v1.PodCondition].self, forKey: .conditions)
		self.containerStatuses = try container.decodeIfPresent([core.v1.ContainerStatus].self, forKey: .containerStatuses)
		self.ephemeralContainerStatuses = try container.decodeIfPresent([core.v1.ContainerStatus].self, forKey: .ephemeralContainerStatuses)
		self.hostIP = try container.decodeIfPresent(String.self, forKey: .hostIP)
		self.initContainerStatuses = try container.decodeIfPresent([core.v1.ContainerStatus].self, forKey: .initContainerStatuses)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.nominatedNodeName = try container.decodeIfPresent(String.self, forKey: .nominatedNodeName)
		self.phase = try container.decodeIfPresent(String.self, forKey: .phase)
		self.podIP = try container.decodeIfPresent(String.self, forKey: .podIP)
		self.podIPs = try container.decodeIfPresent([core.v1.PodIP].self, forKey: .podIPs)
		self.qosClass = try container.decodeIfPresent(String.self, forKey: .qosClass)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
		self.startTime = try container.decodeIfPresent(Date.self, forKey: .startTime)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(containerStatuses, forKey: .containerStatuses)
		try encodingContainer.encode(ephemeralContainerStatuses, forKey: .ephemeralContainerStatuses)
		try encodingContainer.encode(hostIP, forKey: .hostIP)
		try encodingContainer.encode(initContainerStatuses, forKey: .initContainerStatuses)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(nominatedNodeName, forKey: .nominatedNodeName)
		try encodingContainer.encode(phase, forKey: .phase)
		try encodingContainer.encode(podIP, forKey: .podIP)
		try encodingContainer.encode(podIPs, forKey: .podIPs)
		try encodingContainer.encode(qosClass, forKey: .qosClass)
		try encodingContainer.encode(reason, forKey: .reason)
		try encodingContainer.encode(startTime, forKey: .startTime)
	}
}
