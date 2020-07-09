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
	/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
	///
	struct Probe: KubernetesResource {
		///
		/// One and only one of the following should be specified. Exec specifies the action to take.
		///
		public var exec: core.v1.ExecAction?

		///
		/// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
		///
		public var failureThreshold: Int32?

		///
		/// HTTPGet specifies the http request to perform.
		///
		public var httpGet: core.v1.HTTPGetAction?

		///
		/// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var initialDelaySeconds: Int32?

		///
		/// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
		///
		public var periodSeconds: Int32?

		///
		/// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
		///
		public var successThreshold: Int32?

		///
		/// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
		///
		public var tcpSocket: core.v1.TCPSocketAction?

		///
		/// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var timeoutSeconds: Int32?

	}
}

