//
// Copyright 2020 Swiftkube Project
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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// coordination.v1.LeaseSpec
///

import Foundation

public extension coordination.v1 {

	///
	/// LeaseSpec is a specification of a Lease.
	///
	struct LeaseSpec: KubernetesResource {
		///
		/// acquireTime is a time when the current lease was acquired.
		///
		public var acquireTime: Date?
		///
		/// holderIdentity contains the identity of the holder of a current lease.
		///
		public var holderIdentity: String?
		///
		/// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
		///
		public var leaseDurationSeconds: Int32?
		///
		/// leaseTransitions is the number of transitions of a lease between holders.
		///
		public var leaseTransitions: Int32?
		///
		/// renewTime is a time when the current holder of a lease has last updated the lease.
		///
		public var renewTime: Date?
		///
		/// Default memberwise initializer
		///
		public init(
			acquireTime: Date? = nil,
			holderIdentity: String? = nil,
			leaseDurationSeconds: Int32? = nil,
			leaseTransitions: Int32? = nil,
			renewTime: Date? = nil
		) {
			self.acquireTime = acquireTime
			self.holderIdentity = holderIdentity
			self.leaseDurationSeconds = leaseDurationSeconds
			self.leaseTransitions = leaseTransitions
			self.renewTime = renewTime
		}
	}
}

///
/// Codable conformance
///
public extension coordination.v1.LeaseSpec {

	private enum CodingKeys: String, CodingKey {

		case acquireTime = "acquireTime"
		case holderIdentity = "holderIdentity"
		case leaseDurationSeconds = "leaseDurationSeconds"
		case leaseTransitions = "leaseTransitions"
		case renewTime = "renewTime"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.acquireTime = try container.decodeIfPresent(Date.self, forKey: .acquireTime)
		self.holderIdentity = try container.decodeIfPresent(String.self, forKey: .holderIdentity)
		self.leaseDurationSeconds = try container.decodeIfPresent(Int32.self, forKey: .leaseDurationSeconds)
		self.leaseTransitions = try container.decodeIfPresent(Int32.self, forKey: .leaseTransitions)
		self.renewTime = try container.decodeIfPresent(Date.self, forKey: .renewTime)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(acquireTime, forKey: .acquireTime)
		try container.encode(holderIdentity, forKey: .holderIdentity)
		try container.encode(leaseDurationSeconds, forKey: .leaseDurationSeconds)
		try container.encode(leaseTransitions, forKey: .leaseTransitions)
		try container.encode(renewTime, forKey: .renewTime)
	}
}
