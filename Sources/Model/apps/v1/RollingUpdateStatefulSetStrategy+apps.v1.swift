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
/// Kubernetes v1.26.4
/// apps.v1.RollingUpdateStatefulSetStrategy
///

import Foundation

// MARK: - apps.v1.RollingUpdateStatefulSetStrategy

public extension apps.v1 {

	///
	/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
	///
	struct RollingUpdateStatefulSetStrategy: KubernetesResource {
		///
		/// The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding up. This can not be 0. Defaults to 1. This field is alpha-level and is only honored by servers that enable the MaxUnavailableStatefulSet feature. The field applies to all pods in the range 0 to Replicas-1. That means if there is any unavailable pod in the range 0 to Replicas-1, it will be counted towards MaxUnavailable.
		///
		public var maxUnavailable: IntOrString?
		///
		/// Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
		///
		public var partition: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			maxUnavailable: IntOrString? = nil,
			partition: Int32? = nil
		) {
			self.maxUnavailable = maxUnavailable
			self.partition = partition
		}
	}
}

///
/// Codable conformance
///
public extension apps.v1.RollingUpdateStatefulSetStrategy {

	private enum CodingKeys: String, CodingKey {

		case maxUnavailable = "maxUnavailable"
		case partition = "partition"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.maxUnavailable = try container.decodeIfPresent(IntOrString.self, forKey: .maxUnavailable)
		self.partition = try container.decodeIfPresent(Int32.self, forKey: .partition)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(maxUnavailable, forKey: .maxUnavailable)
		try encodingContainer.encode(partition, forKey: .partition)
	}
}
