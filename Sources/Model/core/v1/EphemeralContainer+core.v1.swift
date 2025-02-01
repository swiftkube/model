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
/// core.v1.EphemeralContainer
///

import Foundation

// MARK: - core.v1.EphemeralContainer

public extension core.v1 {

	///
	/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.
	///
	/// To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
	///
	struct EphemeralContainer: KubernetesResource {
		///
		/// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		///
		public var args: [String]?
		///
		/// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		///
		public var command: [String]?
		///
		/// List of environment variables to set in the container. Cannot be updated.
		///
		public var env: [core.v1.EnvVar]?
		///
		/// List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
		///
		public var envFrom: [core.v1.EnvFromSource]?
		///
		/// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
		///
		public var image: String?
		///
		/// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
		///
		public var imagePullPolicy: String?
		///
		/// Lifecycle is not allowed for ephemeral containers.
		///
		public var lifecycle: core.v1.Lifecycle?
		///
		/// Probes are not allowed for ephemeral containers.
		///
		public var livenessProbe: core.v1.Probe?
		///
		/// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
		///
		public var name: String
		///
		/// Ports are not allowed for ephemeral containers.
		///
		public var ports: [core.v1.ContainerPort]?
		///
		/// Probes are not allowed for ephemeral containers.
		///
		public var readinessProbe: core.v1.Probe?
		///
		/// Resources resize policy for the container.
		///
		public var resizePolicy: [core.v1.ContainerResizePolicy]?
		///
		/// Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
		///
		public var resources: core.v1.ResourceRequirements?
		///
		/// Restart policy for the container to manage the restart behavior of each container within a pod. This may only be set for init containers. You cannot set this field on ephemeral containers.
		///
		public var restartPolicy: String?
		///
		/// Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
		///
		public var securityContext: core.v1.SecurityContext?
		///
		/// Probes are not allowed for ephemeral containers.
		///
		public var startupProbe: core.v1.Probe?
		///
		/// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
		///
		public var stdin: Bool?
		///
		/// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
		///
		public var stdinOnce: Bool?
		///
		/// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
		///
		/// The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
		///
		public var targetContainerName: String?
		///
		/// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
		///
		public var terminationMessagePath: String?
		///
		/// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
		///
		public var terminationMessagePolicy: String?
		///
		/// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
		///
		public var tty: Bool?
		///
		/// volumeDevices is the list of block devices to be used by the container.
		///
		public var volumeDevices: [core.v1.VolumeDevice]?
		///
		/// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
		///
		public var volumeMounts: [core.v1.VolumeMount]?
		///
		/// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
		///
		public var workingDir: String?
		///
		/// Default memberwise initializer
		///
		public init(
			args: [String]? = nil,
			command: [String]? = nil,
			env: [core.v1.EnvVar]? = nil,
			envFrom: [core.v1.EnvFromSource]? = nil,
			image: String? = nil,
			imagePullPolicy: String? = nil,
			lifecycle: core.v1.Lifecycle? = nil,
			livenessProbe: core.v1.Probe? = nil,
			name: String,
			ports: [core.v1.ContainerPort]? = nil,
			readinessProbe: core.v1.Probe? = nil,
			resizePolicy: [core.v1.ContainerResizePolicy]? = nil,
			resources: core.v1.ResourceRequirements? = nil,
			restartPolicy: String? = nil,
			securityContext: core.v1.SecurityContext? = nil,
			startupProbe: core.v1.Probe? = nil,
			stdin: Bool? = nil,
			stdinOnce: Bool? = nil,
			targetContainerName: String? = nil,
			terminationMessagePath: String? = nil,
			terminationMessagePolicy: String? = nil,
			tty: Bool? = nil,
			volumeDevices: [core.v1.VolumeDevice]? = nil,
			volumeMounts: [core.v1.VolumeMount]? = nil,
			workingDir: String? = nil
		) {
			self.args = args
			self.command = command
			self.env = env
			self.envFrom = envFrom
			self.image = image
			self.imagePullPolicy = imagePullPolicy
			self.lifecycle = lifecycle
			self.livenessProbe = livenessProbe
			self.name = name
			self.ports = ports
			self.readinessProbe = readinessProbe
			self.resizePolicy = resizePolicy
			self.resources = resources
			self.restartPolicy = restartPolicy
			self.securityContext = securityContext
			self.startupProbe = startupProbe
			self.stdin = stdin
			self.stdinOnce = stdinOnce
			self.targetContainerName = targetContainerName
			self.terminationMessagePath = terminationMessagePath
			self.terminationMessagePolicy = terminationMessagePolicy
			self.tty = tty
			self.volumeDevices = volumeDevices
			self.volumeMounts = volumeMounts
			self.workingDir = workingDir
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EphemeralContainer {

	private enum CodingKeys: String, CodingKey {

		case args = "args"
		case command = "command"
		case env = "env"
		case envFrom = "envFrom"
		case image = "image"
		case imagePullPolicy = "imagePullPolicy"
		case lifecycle = "lifecycle"
		case livenessProbe = "livenessProbe"
		case name = "name"
		case ports = "ports"
		case readinessProbe = "readinessProbe"
		case resizePolicy = "resizePolicy"
		case resources = "resources"
		case restartPolicy = "restartPolicy"
		case securityContext = "securityContext"
		case startupProbe = "startupProbe"
		case stdin = "stdin"
		case stdinOnce = "stdinOnce"
		case targetContainerName = "targetContainerName"
		case terminationMessagePath = "terminationMessagePath"
		case terminationMessagePolicy = "terminationMessagePolicy"
		case tty = "tty"
		case volumeDevices = "volumeDevices"
		case volumeMounts = "volumeMounts"
		case workingDir = "workingDir"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.args = try container.decodeIfPresent([String].self, forKey: .args)
		self.command = try container.decodeIfPresent([String].self, forKey: .command)
		self.env = try container.decodeIfPresent([core.v1.EnvVar].self, forKey: .env)
		self.envFrom = try container.decodeIfPresent([core.v1.EnvFromSource].self, forKey: .envFrom)
		self.image = try container.decodeIfPresent(String.self, forKey: .image)
		self.imagePullPolicy = try container.decodeIfPresent(String.self, forKey: .imagePullPolicy)
		self.lifecycle = try container.decodeIfPresent(core.v1.Lifecycle.self, forKey: .lifecycle)
		self.livenessProbe = try container.decodeIfPresent(core.v1.Probe.self, forKey: .livenessProbe)
		self.name = try container.decode(String.self, forKey: .name)
		self.ports = try container.decodeIfPresent([core.v1.ContainerPort].self, forKey: .ports)
		self.readinessProbe = try container.decodeIfPresent(core.v1.Probe.self, forKey: .readinessProbe)
		self.resizePolicy = try container.decodeIfPresent([core.v1.ContainerResizePolicy].self, forKey: .resizePolicy)
		self.resources = try container.decodeIfPresent(core.v1.ResourceRequirements.self, forKey: .resources)
		self.restartPolicy = try container.decodeIfPresent(String.self, forKey: .restartPolicy)
		self.securityContext = try container.decodeIfPresent(core.v1.SecurityContext.self, forKey: .securityContext)
		self.startupProbe = try container.decodeIfPresent(core.v1.Probe.self, forKey: .startupProbe)
		self.stdin = try container.decodeIfPresent(Bool.self, forKey: .stdin)
		self.stdinOnce = try container.decodeIfPresent(Bool.self, forKey: .stdinOnce)
		self.targetContainerName = try container.decodeIfPresent(String.self, forKey: .targetContainerName)
		self.terminationMessagePath = try container.decodeIfPresent(String.self, forKey: .terminationMessagePath)
		self.terminationMessagePolicy = try container.decodeIfPresent(String.self, forKey: .terminationMessagePolicy)
		self.tty = try container.decodeIfPresent(Bool.self, forKey: .tty)
		self.volumeDevices = try container.decodeIfPresent([core.v1.VolumeDevice].self, forKey: .volumeDevices)
		self.volumeMounts = try container.decodeIfPresent([core.v1.VolumeMount].self, forKey: .volumeMounts)
		self.workingDir = try container.decodeIfPresent(String.self, forKey: .workingDir)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(args, forKey: .args)
		try encodingContainer.encode(command, forKey: .command)
		try encodingContainer.encode(env, forKey: .env)
		try encodingContainer.encode(envFrom, forKey: .envFrom)
		try encodingContainer.encode(image, forKey: .image)
		try encodingContainer.encode(imagePullPolicy, forKey: .imagePullPolicy)
		try encodingContainer.encode(lifecycle, forKey: .lifecycle)
		try encodingContainer.encode(livenessProbe, forKey: .livenessProbe)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(ports, forKey: .ports)
		try encodingContainer.encode(readinessProbe, forKey: .readinessProbe)
		try encodingContainer.encode(resizePolicy, forKey: .resizePolicy)
		try encodingContainer.encode(resources, forKey: .resources)
		try encodingContainer.encode(restartPolicy, forKey: .restartPolicy)
		try encodingContainer.encode(securityContext, forKey: .securityContext)
		try encodingContainer.encode(startupProbe, forKey: .startupProbe)
		try encodingContainer.encode(stdin, forKey: .stdin)
		try encodingContainer.encode(stdinOnce, forKey: .stdinOnce)
		try encodingContainer.encode(targetContainerName, forKey: .targetContainerName)
		try encodingContainer.encode(terminationMessagePath, forKey: .terminationMessagePath)
		try encodingContainer.encode(terminationMessagePolicy, forKey: .terminationMessagePolicy)
		try encodingContainer.encode(tty, forKey: .tty)
		try encodingContainer.encode(volumeDevices, forKey: .volumeDevices)
		try encodingContainer.encode(volumeMounts, forKey: .volumeMounts)
		try encodingContainer.encode(workingDir, forKey: .workingDir)
	}
}
