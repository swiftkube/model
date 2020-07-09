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
	/// IngressSpec describes the Ingress the user wishes to exist.
	///
	struct IngressSpec: KubernetesResource {
		///
		/// A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
		///
		public var backend: extensions.v1beta1.IngressBackend?

		///
		/// A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
		///
		public var rules: [extensions.v1beta1.IngressRule]?

		///
		/// TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
		///
		public var tls: [extensions.v1beta1.IngressTLS]?

	}
}

