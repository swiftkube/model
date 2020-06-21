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
	/// EnvFromSource represents the source of a set of ConfigMaps
	///
	struct EnvFromSource: KubernetesResource, Codable {
	
		///
		/// The ConfigMap to select from
		///
		var configMapRef: core.v1.ConfigMapEnvSource?
	
		///
		/// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
		///
		var prefix: String?
	
		///
		/// The Secret to select from
		///
		var secretRef: core.v1.SecretEnvSource?
	
	}
}

