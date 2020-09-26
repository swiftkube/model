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

public extension flowcontrol.v1alpha1 {

	///
	/// PriorityLevelConfiguration represents the configuration of a priority level.
	///
	struct PriorityLevelConfiguration: KubernetesResource, ResourceWithMetadata {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "flowcontrol.apiserver.k8s.io/v1alpha1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PriorityLevelConfiguration"
		///
		/// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status
		///
		public var spec: flowcontrol.v1alpha1.PriorityLevelConfigurationSpec?
		///
		/// `status` is the current status of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status
		///
		public var status: flowcontrol.v1alpha1.PriorityLevelConfigurationStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: flowcontrol.v1alpha1.PriorityLevelConfigurationSpec? = nil,
			status: flowcontrol.v1alpha1.PriorityLevelConfigurationStatus? = nil
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.PriorityLevelConfiguration {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

}

