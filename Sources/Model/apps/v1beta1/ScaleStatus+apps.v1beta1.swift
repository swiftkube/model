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

public extension apps.v1beta1 {

	///
	/// ScaleStatus represents the current status of a scale subresource.
	///
	struct ScaleStatus: KubernetesResource {
		///
		/// actual number of observed instances of the scaled object.
		///
		public var replicas: Int32
		///
		/// label query over pods that should match the replicas count. More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
		///
		public var selector: [String: String]?
		///
		/// label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
		///
		public var targetSelector: String?
		///
		/// Default memberwise initializer
		///
		public init(
			replicas: Int32,
			selector: [String: String]? = nil,
			targetSelector: String? = nil
		) {
			self.replicas = replicas
			self.selector = selector
			self.targetSelector = targetSelector
		}
	}
}

///
/// Codable conformance
///
extension apps.v1beta1.ScaleStatus {

	private enum CodingKeys: String, CodingKey {
		case replicas = "replicas"
		case selector = "selector"
		case targetSelector = "targetSelector"
	}

}

