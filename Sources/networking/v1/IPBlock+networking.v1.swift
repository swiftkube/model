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

public extension networking.v1 {

	///
	/// IPBlock describes a particular CIDR (Ex. "192.168.1.1/24") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
	///
	struct IPBlock: KubernetesResource {
		///
		/// CIDR is a string representing the IP Block Valid examples are "192.168.1.1/24"
		///
		public var cidr: String
		///
		/// Except is a slice of CIDRs that should not be included within an IP Block Valid examples are "192.168.1.1/24" Except values will be rejected if they are outside the CIDR range
		///
		public var except: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			cidr: String, 
			except: [String]?
		) {
			self.cidr = cidr
			self.except = except
		}
	}
}

