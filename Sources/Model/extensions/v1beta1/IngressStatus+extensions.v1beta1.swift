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
	/// IngressStatus describe the current state of the Ingress.
	///
	struct IngressStatus: KubernetesResource {
		///
		/// LoadBalancer contains the current status of the load-balancer.
		///
		public var loadBalancer: core.v1.LoadBalancerStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			loadBalancer: core.v1.LoadBalancerStatus? = nil
		) {
			self.loadBalancer = loadBalancer
		}
	}
}

///
/// Codable conformance
///
extension extensions.v1beta1.IngressStatus {

	private enum CodingKeys: String, CodingKey {
		case loadBalancer = "loadBalancer"
	}

}

