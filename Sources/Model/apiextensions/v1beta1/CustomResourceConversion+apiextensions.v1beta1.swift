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
/// apiextensions.v1beta1.CustomResourceConversion
///

import Foundation

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceConversion describes how to convert different versions of a CR.
	///
	struct CustomResourceConversion: KubernetesResource {
		///
		/// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `["v1beta1"]`.
		///
		public var conversionReviewVersions: [String]?
		///
		/// strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
		///   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set.
		///
		public var strategy: String
		///
		/// webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`.
		///
		public var webhookClientConfig: apiextensions.v1beta1.WebhookClientConfig?
		///
		/// Default memberwise initializer
		///
		public init(
			conversionReviewVersions: [String]? = nil,
			strategy: String,
			webhookClientConfig: apiextensions.v1beta1.WebhookClientConfig? = nil
		) {
			self.conversionReviewVersions = conversionReviewVersions
			self.strategy = strategy
			self.webhookClientConfig = webhookClientConfig
		}
	}
}

///
/// Codable conformance
///
public extension apiextensions.v1beta1.CustomResourceConversion {

	private enum CodingKeys: String, CodingKey {

		case conversionReviewVersions = "conversionReviewVersions"
		case strategy = "strategy"
		case webhookClientConfig = "webhookClientConfig"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conversionReviewVersions = try container.decodeIfPresent([String].self, forKey: .conversionReviewVersions)
		self.strategy = try container.decode(String.self, forKey: .strategy)
		self.webhookClientConfig = try container.decodeIfPresent(apiextensions.v1beta1.WebhookClientConfig.self, forKey: .webhookClientConfig)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(conversionReviewVersions, forKey: .conversionReviewVersions)
		try container.encode(strategy, forKey: .strategy)
		try container.encode(webhookClientConfig, forKey: .webhookClientConfig)
	}
}
