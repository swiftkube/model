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

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>. Deprecated in v1.16, planned for removal in v1.19. Use apiextensions.k8s.io/v1 CustomResourceDefinition instead.
	///
	struct CustomResourceDefinition: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "apiextensions.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "CustomResourceDefinition"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// spec describes how the user wants the resources to appear
		///
		public var spec: apiextensions.v1beta1.CustomResourceDefinitionSpec
		///
		/// status indicates the actual state of the CustomResourceDefinition
		///
		public var status: apiextensions.v1beta1.CustomResourceDefinitionStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta?, 
			spec: apiextensions.v1beta1.CustomResourceDefinitionSpec, 
			status: apiextensions.v1beta1.CustomResourceDefinitionStatus?
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

