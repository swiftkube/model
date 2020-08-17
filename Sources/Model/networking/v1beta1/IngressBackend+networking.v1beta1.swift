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

public extension networking.v1beta1 {

	///
	/// IngressBackend describes all endpoints for a given service and port.
	///
	struct IngressBackend: KubernetesResource {
		///
		/// Specifies the name of the referenced service.
		///
		public var serviceName: String
		///
		/// Specifies the port of the referenced service.
		///
		public var servicePort: IntOrString
		///
		/// Default memberwise initializer
		///
		public init(
			serviceName: String,
			servicePort: IntOrString
		) {
			self.serviceName = serviceName
			self.servicePort = servicePort
		}
	}
}

