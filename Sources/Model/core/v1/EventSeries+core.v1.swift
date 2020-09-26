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
		public var lastObservedTime: String?
		///
		/// State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
		///
		public var state: String?
		///
		/// Default memberwise initializer
		///
		public init(
			count: Int32? = nil,
			lastObservedTime: String? = nil,
			state: String? = nil
		) {
			self.count = count
			self.lastObservedTime = lastObservedTime
			self.state = state
		}
	}
}

///
/// Codable conformance
///
extension core.v1.EventSeries {

	private enum CodingKeys: String, CodingKey {
		case count = "count"
		case lastObservedTime = "lastObservedTime"
		case state = "state"
	}

}

