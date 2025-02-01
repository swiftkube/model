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
/// Kubernetes v1.32.0
/// core.v1.EventSeries
///

import Foundation

// MARK: - core.v1.EventSeries

public extension core.v1 {

	///
	/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
	///
	struct EventSeries: KubernetesResource {
		///
		/// Number of occurrences in this series up to the last heartbeat time
		///
		public var count: Int32?
		///
		/// Time of the last occurrence observed
		///
		public var lastObservedTime: Date?
		///
		/// Default memberwise initializer
		///
		public init(
			count: Int32? = nil,
			lastObservedTime: Date? = nil
		) {
			self.count = count
			self.lastObservedTime = lastObservedTime
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EventSeries {

	private enum CodingKeys: String, CodingKey {

		case count = "count"
		case lastObservedTime = "lastObservedTime"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.count = try container.decodeIfPresent(Int32.self, forKey: .count)
		self.lastObservedTime = try container.decodeIfPresent(Date.self, forKey: .lastObservedTime)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(count, forKey: .count)
		try encodingContainer.encode(lastObservedTime, forKey: .lastObservedTime)
	}
}
