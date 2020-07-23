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

public extension core.v1 {

	///
	/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
	///
	struct HostAlias: KubernetesResource {
		///
		/// Hostnames for the above IP address.
		///
		public var hostnames: [String]?
		///
		/// IP address of the host file entry.
		///
		public var ip: String?
		///
		/// Default memberwise initializer
		///
		public init(
			hostnames: [String]?, 
			ip: String?
		) {
			self.hostnames = hostnames
			self.ip = ip
		}
	}
}

