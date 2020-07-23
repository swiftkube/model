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
	/// Projection that may be projected along with other supported volume types
	///
	struct VolumeProjection: KubernetesResource {
		///
		/// information about the configMap data to project
		///
		public var configMap: core.v1.ConfigMapProjection?
		///
		/// information about the downwardAPI data to project
		///
		public var downwardAPI: core.v1.DownwardAPIProjection?
		///
		/// information about the secret data to project
		///
		public var secret: core.v1.SecretProjection?
		///
		/// information about the serviceAccountToken data to project
		///
		public var serviceAccountToken: core.v1.ServiceAccountTokenProjection?
		///
		/// Default memberwise initializer
		///
		public init(
			configMap: core.v1.ConfigMapProjection?, 
			downwardAPI: core.v1.DownwardAPIProjection?, 
			secret: core.v1.SecretProjection?, 
			serviceAccountToken: core.v1.ServiceAccountTokenProjection?
		) {
			self.configMap = configMap
			self.downwardAPI = downwardAPI
			self.secret = secret
			self.serviceAccountToken = serviceAccountToken
		}
	}
}

