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

public extension certificates.v1beta1 {

	///
	/// This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
	///
	struct CertificateSigningRequestSpec: KubernetesResource {
		///
		/// Extra information about the requesting user. See user.Info interface for details.
		///
		public var extra: [String: [String]]?

		///
		/// Group information about the requesting user. See user.Info interface for details.
		///
		public var groups: [String]?

		///
		/// Base64-encoded PKCS#10 CSR data
		///
		public var request: String

		///
		/// UID information about the requesting user. See user.Info interface for details.
		///
		public var uid: String?

		///
		/// allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3
		///      https://tools.ietf.org/html/rfc5280#section-4.2.1.12
		///
		public var usages: [String]?

		///
		/// Information about the requesting user. See user.Info interface for details.
		///
		public var username: String?

	}
}

