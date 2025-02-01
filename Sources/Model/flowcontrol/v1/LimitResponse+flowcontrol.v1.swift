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
/// flowcontrol.v1.LimitResponse
///

import Foundation

// MARK: - flowcontrol.v1.LimitResponse

public extension flowcontrol.v1 {

	///
	/// LimitResponse defines how to handle requests that can not be executed right now.
	///
	struct LimitResponse: KubernetesResource {
		///
		/// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
		///
		public var queuing: flowcontrol.v1.QueuingConfiguration?
		///
		/// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			queuing: flowcontrol.v1.QueuingConfiguration? = nil,
			type: String
		) {
			self.queuing = queuing
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1.LimitResponse {

	private enum CodingKeys: String, CodingKey {

		case queuing = "queuing"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.queuing = try container.decodeIfPresent(flowcontrol.v1.QueuingConfiguration.self, forKey: .queuing)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(queuing, forKey: .queuing)
		try encodingContainer.encode(type, forKey: .type)
	}
}
