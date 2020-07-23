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
	/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
	///
	struct QuobyteVolumeSource: KubernetesResource {
		///
		/// Group to map volume access to Default is no group
		///
		public var group: String?
		///
		/// ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
		///
		public var readOnly: Bool?
		///
		/// Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
		///
		public var registry: String
		///
		/// Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
		///
		public var tenant: String?
		///
		/// User to map volume access to Defaults to serivceaccount user
		///
		public var user: String?
		///
		/// Volume is a string that references an already created Quobyte volume by name.
		///
		public var volume: String
		///
		/// Default memberwise initializer
		///
		public init(
			group: String?, 
			readOnly: Bool?, 
			registry: String, 
			tenant: String?, 
			user: String?, 
			volume: String
		) {
			self.group = group
			self.readOnly = readOnly
			self.registry = registry
			self.tenant = tenant
			self.user = user
			self.volume = volume
		}
	}
}

