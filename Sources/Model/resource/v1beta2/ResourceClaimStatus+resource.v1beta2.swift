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
/// Kubernetes v1.33.3
/// resource.v1beta2.ResourceClaimStatus
///

import Foundation

// MARK: - resource.v1beta2.ResourceClaimStatus

public extension resource.v1beta2 {

	///
	/// ResourceClaimStatus tracks whether the resource has been allocated and what the result of that was.
	///
	struct ResourceClaimStatus: KubernetesResource {
		///
		/// Allocation is set once the claim has been allocated successfully.
		///
		public var allocation: resource.v1beta2.AllocationResult?
		///
		/// Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
		///
		public var devices: [resource.v1beta2.AllocatedDeviceStatus]?
		///
		/// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
		///
		/// In a cluster with multiple scheduler instances, two pods might get scheduled concurrently by different schedulers. When they reference the same ResourceClaim which already has reached its maximum number of consumers, only one pod can be scheduled.
		///
		/// Both schedulers try to add their pod to the claim.status.reservedFor field, but only the update that reaches the API server first gets stored. The other one fails with an error and the scheduler which issued it knows that it must put the pod back into the queue, waiting for the ResourceClaim to become usable again.
		///
		/// There can be at most 256 such reservations. This may get increased in the future, but not reduced.
		///
		public var reservedFor: [resource.v1beta2.ResourceClaimConsumerReference]?
		///
		/// Default memberwise initializer
		///
		public init(
			allocation: resource.v1beta2.AllocationResult? = nil,
			devices: [resource.v1beta2.AllocatedDeviceStatus]? = nil,
			reservedFor: [resource.v1beta2.ResourceClaimConsumerReference]? = nil
		) {
			self.allocation = allocation
			self.devices = devices
			self.reservedFor = reservedFor
		}
	}
}

///
/// Codable conformance
///
public extension resource.v1beta2.ResourceClaimStatus {

	private enum CodingKeys: String, CodingKey {

		case allocation = "allocation"
		case devices = "devices"
		case reservedFor = "reservedFor"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allocation = try container.decodeIfPresent(resource.v1beta2.AllocationResult.self, forKey: .allocation)
		self.devices = try container.decodeIfPresent([resource.v1beta2.AllocatedDeviceStatus].self, forKey: .devices)
		self.reservedFor = try container.decodeIfPresent([resource.v1beta2.ResourceClaimConsumerReference].self, forKey: .reservedFor)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allocation, forKey: .allocation)
		try encodingContainer.encode(devices, forKey: .devices)
		try encodingContainer.encode(reservedFor, forKey: .reservedFor)
	}
}
