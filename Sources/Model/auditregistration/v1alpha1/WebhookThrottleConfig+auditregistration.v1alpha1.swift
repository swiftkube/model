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
/// auditregistration.v1alpha1.WebhookThrottleConfig
///

import Foundation

public extension auditregistration.v1alpha1 {

	///
	/// WebhookThrottleConfig holds the configuration for throttling events
	///
	struct WebhookThrottleConfig: KubernetesResource {
		///
		/// ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
		///
		public var burst: Int64?
		///
		/// ThrottleQPS maximum number of batches per second default 10 QPS
		///
		public var qps: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			burst: Int64? = nil,
			qps: Int64? = nil
		) {
			self.burst = burst
			self.qps = qps
		}
	}
}

///
/// Codable conformance
///
public extension auditregistration.v1alpha1.WebhookThrottleConfig {

	private enum CodingKeys: String, CodingKey {

		case burst = "burst"
		case qps = "qps"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.burst = try container.decodeIfPresent(Int64.self, forKey: .burst)
		self.qps = try container.decodeIfPresent(Int64.self, forKey: .qps)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(burst, forKey: .burst)
		try container.encode(qps, forKey: .qps)
	}
}
