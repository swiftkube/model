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
/// Kubernetes v1.28.3
/// core.v1.PodResourceClaimStatus
///

import Foundation

// MARK: - core.v1.PodResourceClaimStatus

public extension core.v1 {

	///
	/// PodResourceClaimStatus is stored in the PodStatus for each PodResourceClaim which references a ResourceClaimTemplate. It stores the generated name for the corresponding ResourceClaim.
	///
	struct PodResourceClaimStatus: KubernetesResource {
		///
		/// Name uniquely identifies this resource claim inside the pod. This must match the name of an entry in pod.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
		///
		public var name: String
		///
		/// ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod. It this is unset, then generating a ResourceClaim was not necessary. The pod.spec.resourceClaims entry can be ignored in this case.
		///
		public var resourceClaimName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			resourceClaimName: String? = nil
		) {
			self.name = name
			self.resourceClaimName = resourceClaimName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodResourceClaimStatus {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case resourceClaimName = "resourceClaimName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decode(String.self, forKey: .name)
		self.resourceClaimName = try container.decodeIfPresent(String.self, forKey: .resourceClaimName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(resourceClaimName, forKey: .resourceClaimName)
	}
}