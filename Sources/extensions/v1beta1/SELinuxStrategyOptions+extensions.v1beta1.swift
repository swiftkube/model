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
	/// SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.
	///
	struct SELinuxStrategyOptions: KubernetesResource {
		///
		/// rule is the strategy that will dictate the allowable labels that may be set.
		///
		public var rule: String
		///
		/// seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
		///
		public var seLinuxOptions: core.v1.SELinuxOptions?
		///
		/// Default memberwise initializer
		///
		public init(
			rule: String, 
			seLinuxOptions: core.v1.SELinuxOptions?
		) {
			self.rule = rule
			self.seLinuxOptions = seLinuxOptions
		}
	}
}

