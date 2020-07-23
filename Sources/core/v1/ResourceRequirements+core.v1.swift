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
	/// ResourceRequirements describes the compute resource requirements.
	///
	struct ResourceRequirements: KubernetesResource {
		///
		/// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
		///
		public var limits: [String: Quantity]?
		///
		/// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
		///
		public var requests: [String: Quantity]?
		///
		/// Default memberwise initializer
		///
		public init(
			limits: [String: Quantity]?, 
			requests: [String: Quantity]?
		) {
			self.limits = limits
			self.requests = requests
		}
	}
}

