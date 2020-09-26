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

public extension discovery.v1beta1 {

	///
	/// EndpointConditions represents the current condition of an endpoint.
	///
	struct EndpointConditions: KubernetesResource {
		///
		/// ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
		///
		public var ready: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			ready: Bool? = nil
		) {
			self.ready = ready
		}
	}
}

///
/// Codable conformance
///
extension discovery.v1beta1.EndpointConditions {

	private enum CodingKeys: String, CodingKey {
		case ready = "ready"
	}

}

