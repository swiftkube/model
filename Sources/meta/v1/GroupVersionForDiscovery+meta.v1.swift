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

public extension meta.v1 {

	///
	/// GroupVersion contains the "group/version" and "version" string of a version. It is made a struct to keep extensibility.
	///
	struct GroupVersionForDiscovery: KubernetesResource {
		///
		/// groupVersion specifies the API group and version in the form "group/version"
		///
		public var groupVersion: String
		///
		/// version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
		///
		public var version: String
		///
		/// Default memberwise initializer
		///
		public init(
			groupVersion: String, 
			version: String
		) {
			self.groupVersion = groupVersion
			self.version = version
		}
	}
}

