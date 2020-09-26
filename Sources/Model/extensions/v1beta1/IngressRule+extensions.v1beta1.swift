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

public extension extensions.v1beta1 {

	///
	/// IngressRule represents the rules mapping the paths under a specified host to the related backend services. Incoming requests are first evaluated for a host match, then routed to the backend associated with the matching IngressRuleValue.
	///
	struct IngressRule: KubernetesResource {
		///
		/// Host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the "host" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to
		///    the IP in the Spec of the parent Ingress.
		/// 2. The `:` delimiter is not respected because ports are not allowed.
		/// 	  Currently the port of an Ingress is implicitly :80 for http and
		/// 	  :443 for https.
		/// Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.
		/// 
		/// Host can be "precise" which is a domain name without the terminating dot of a network host (e.g. "foo.bar.com") or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. "*.foo.com"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == "*"). Requests will be matched against the Host field in the following way: 1. If Host is precise, the request matches this rule if the http host header is equal to Host. 2. If Host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule.
		///
		public var host: String?
		///
		/// No description
		///
		public var http: extensions.v1beta1.HTTPIngressRuleValue?
		///
		/// Default memberwise initializer
		///
		public init(
			host: String? = nil,
			http: extensions.v1beta1.HTTPIngressRuleValue? = nil
		) {
			self.host = host
			self.http = http
		}
	}
}

///
/// Codable conformance
///
extension extensions.v1beta1.IngressRule {

	private enum CodingKeys: String, CodingKey {
		case host = "host"
		case http = "http"
	}

}

