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
	/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
	///
	struct LoadBalancerIngress: KubernetesResource, Codable {
	
		///
		/// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
		///
		var hostname: String?
	
		///
		/// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
		///
		var ip: String?
	
	}
}

