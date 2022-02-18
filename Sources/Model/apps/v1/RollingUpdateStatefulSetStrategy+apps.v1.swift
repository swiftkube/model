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
/// Kubernetes v1.22.7
/// apps.v1.RollingUpdateStatefulSetStrategy
///

import Foundation

public extension apps.v1 {

	///
	/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
	///
	struct RollingUpdateStatefulSetStrategy: KubernetesResource {
		///
		/// Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
		///
		public var partition: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			partition: Int32? = nil
		) {
			self.partition = partition
		}
	}
}

///
/// Codable conformance
///
public extension apps.v1.RollingUpdateStatefulSetStrategy {

	private enum CodingKeys: String, CodingKey {

		case partition = "partition"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.partition = try container.decodeIfPresent(Int32.self, forKey: .partition)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(partition, forKey: .partition)
	}
}
