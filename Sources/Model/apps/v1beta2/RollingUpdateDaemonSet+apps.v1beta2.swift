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

public extension apps.v1beta2 {

	///
	/// Spec to control the desired behavior of daemon set rolling update.
	///
	struct RollingUpdateDaemonSet: KubernetesResource {
		///
		/// The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0. Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update.
		///
		public var maxUnavailable: IntOrString?
		///
		/// Default memberwise initializer
		///
		public init(
			maxUnavailable: IntOrString? = nil
		) {
			self.maxUnavailable = maxUnavailable
		}
	}
}

///
/// Codable conformance
///
extension apps.v1beta2.RollingUpdateDaemonSet {

	private enum CodingKeys: String, CodingKey {
		case maxUnavailable = "maxUnavailable"
	}

}

