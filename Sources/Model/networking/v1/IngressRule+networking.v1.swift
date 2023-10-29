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
/// Kubernetes v1.28.3
/// networking.v1.IngressRule
///

import Foundation

// MARK: - networking.v1.IngressRule

public extension networking.v1 {

	///
	/// IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
	///
	struct IngressRule: KubernetesResource {
		///
		/// host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to
		///    the IP in the Spec of the parent Ingress.
		/// 2. The `:` delimiter is not respected because ports are not allowed.
		/// 	  Currently the port of an Ingress is implicitly :80 for http and
		/// 	  :443 for https.
		/// Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
		///
		/// host can be "precise" which is a domain name without the terminating dot of a network host (e.g. "foo.bar.com") or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. "*.foo.com"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == "*"). Requests will be matched against the Host field in the following way: 1. If host is precise, the request matches this rule if the http host header is equal to Host. 2. If host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule.
		///
		public var host: String?
		///
		/// No description
		///
		public var http: networking.v1.HTTPIngressRuleValue?
		///
		/// Default memberwise initializer
		///
		public init(
			host: String? = nil,
			http: networking.v1.HTTPIngressRuleValue? = nil
		) {
			self.host = host
			self.http = http
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.IngressRule {

	private enum CodingKeys: String, CodingKey {

		case host = "host"
		case http = "http"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.host = try container.decodeIfPresent(String.self, forKey: .host)
		self.http = try container.decodeIfPresent(networking.v1.HTTPIngressRuleValue.self, forKey: .http)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(host, forKey: .host)
		try encodingContainer.encode(http, forKey: .http)
	}
}
