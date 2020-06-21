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

public extension coordination.v1beta1 {

	///
	/// LeaseSpec is a specification of a Lease.
	///
	struct LeaseSpec: KubernetesResource, Codable {
	
		///
		/// acquireTime is a time when the current lease was acquired.
		///
		var acquireTime: String?
	
		///
		/// holderIdentity contains the identity of the holder of a current lease.
		///
		var holderIdentity: String?
	
		///
		/// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
		///
		var leaseDurationSeconds: Int32?
	
		///
		/// leaseTransitions is the number of transitions of a lease between holders.
		///
		var leaseTransitions: Int32?
	
		///
		/// renewTime is a time when the current holder of a lease has last updated the lease.
		///
		var renewTime: String?
	
	}
}

