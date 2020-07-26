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

public extension apps.v1beta2 {

	///
	/// ScaleSpec describes the attributes of a scale subresource
	///
	struct ScaleSpec: KubernetesResource {
		///
		/// desired number of instances for the scaled object.
		///
		public var replicas: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			replicas: Int32? = nil
		) {
			self.replicas = replicas
		}
	}
}

