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
/// discovery.v1.EndpointConditions
///

import Foundation

// MARK: - discovery.v1.EndpointConditions

public extension discovery.v1 {

	///
	/// EndpointConditions represents the current condition of an endpoint.
	///
	struct EndpointConditions: KubernetesResource {
		///
		/// ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
		///
		public var ready: Bool?
		///
		/// serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition.
		///
		public var serving: Bool?
		///
		/// terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating.
		///
		public var terminating: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			ready: Bool? = nil,
			serving: Bool? = nil,
			terminating: Bool? = nil
		) {
			self.ready = ready
			self.serving = serving
			self.terminating = terminating
		}
	}
}

///
/// Codable conformance
///
public extension discovery.v1.EndpointConditions {

	private enum CodingKeys: String, CodingKey {

		case ready = "ready"
		case serving = "serving"
		case terminating = "terminating"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.ready = try container.decodeIfPresent(Bool.self, forKey: .ready)
		self.serving = try container.decodeIfPresent(Bool.self, forKey: .serving)
		self.terminating = try container.decodeIfPresent(Bool.self, forKey: .terminating)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(ready, forKey: .ready)
		try encodingContainer.encode(serving, forKey: .serving)
		try encodingContainer.encode(terminating, forKey: .terminating)
	}
}
