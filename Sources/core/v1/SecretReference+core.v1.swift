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
	/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
	///
	struct SecretReference: KubernetesResource {
		///
		/// Name is unique within a namespace to reference a secret resource.
		///
		var name: String?

		///
		/// Namespace defines the space within which the secret name must be unique.
		///
		var namespace: String?

	}
}

