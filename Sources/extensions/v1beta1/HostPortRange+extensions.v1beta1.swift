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
	/// HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined. Deprecated: use HostPortRange from policy API Group instead.
	///
	struct HostPortRange: KubernetesResource {
		///
		/// max is the end of the range, inclusive.
		///
		public var max: Int32
		///
		/// min is the start of the range, inclusive.
		///
		public var min: Int32
		///
		/// Default memberwise initializer
		///
		public init(
			max: Int32, 
			min: Int32
		) {
			self.max = max
			self.min = min
		}
	}
}

