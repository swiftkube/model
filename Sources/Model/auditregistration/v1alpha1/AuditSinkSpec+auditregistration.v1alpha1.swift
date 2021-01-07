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
/// auditregistration.v1alpha1.AuditSinkSpec
///

import Foundation

public extension auditregistration.v1alpha1 {

	///
	/// AuditSinkSpec holds the spec for the audit sink
	///
	struct AuditSinkSpec: KubernetesResource {
		///
		/// Policy defines the policy for selecting which events should be sent to the webhook required
		///
		public var policy: auditregistration.v1alpha1.Policy
		///
		/// Webhook to send events required
		///
		public var webhook: auditregistration.v1alpha1.Webhook
		///
		/// Default memberwise initializer
		///
		public init(
			policy: auditregistration.v1alpha1.Policy,
			webhook: auditregistration.v1alpha1.Webhook
		) {
			self.policy = policy
			self.webhook = webhook
		}
	}
}

///
/// Codable conformance
///
public extension auditregistration.v1alpha1.AuditSinkSpec {

	private enum CodingKeys: String, CodingKey {

		case policy = "policy"
		case webhook = "webhook"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.policy = try container.decode(auditregistration.v1alpha1.Policy.self, forKey: .policy)
		self.webhook = try container.decode(auditregistration.v1alpha1.Webhook.self, forKey: .webhook)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(policy, forKey: .policy)
		try container.encode(webhook, forKey: .webhook)
	}
}
