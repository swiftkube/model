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
/// core.v1.SleepAction
///

import Foundation

// MARK: - core.v1.SleepAction

public extension core.v1 {

	///
	/// SleepAction describes a "sleep" action.
	///
	struct SleepAction: KubernetesResource {
		///
		/// Seconds is the number of seconds to sleep.
		///
		public var seconds: Int64
		///
		/// Default memberwise initializer
		///
		public init(
			seconds: Int64
		) {
			self.seconds = seconds
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SleepAction {

	private enum CodingKeys: String, CodingKey {

		case seconds = "seconds"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.seconds = try container.decode(Int64.self, forKey: .seconds)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(seconds, forKey: .seconds)
	}
}
