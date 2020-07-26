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

public extension authentication.v1 {

	///
	/// TokenRequestStatus is the result of a token request.
	///
	struct TokenRequestStatus: KubernetesResource {
		///
		/// ExpirationTimestamp is the time of expiration of the returned token.
		///
		public var expirationTimestamp: String
		///
		/// Token is the opaque bearer token.
		///
		public var token: String
		///
		/// Default memberwise initializer
		///
		public init(
			expirationTimestamp: String,
			token: String
		) {
			self.expirationTimestamp = expirationTimestamp
			self.token = token
		}
	}
}

