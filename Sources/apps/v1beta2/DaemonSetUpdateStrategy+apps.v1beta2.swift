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
	/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
	///
	struct DaemonSetUpdateStrategy: KubernetesResource {
		///
		/// Rolling update config params. Present only if type = "RollingUpdate".
		///
		public var rollingUpdate: apps.v1beta2.RollingUpdateDaemonSet?

		///
		/// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
		///
		public var type: String?

	}
}

