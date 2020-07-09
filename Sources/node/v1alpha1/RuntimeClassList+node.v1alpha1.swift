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

public extension node.v1alpha1 {

	///
	/// RuntimeClassList is a list of RuntimeClass objects.
	///
	struct RuntimeClassList: KubernetesResource, KubernetesResourceList {

		typealias Resource = node.v1alpha1.RuntimeClass
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		let apiVersion: String = "node.k8s.io/v1alpha1"

		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		let kind: String = "RuntimeClassList"

		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		var metadata: meta.v1.ListMeta?

		///
		/// Items is a list of schema objects.
		///
		var items: [node.v1alpha1.RuntimeClass]

	}
}

extension node.v1alpha1.RuntimeClassList: Sequence {

	public typealias Element = node.v1alpha1.RuntimeClass

	public func makeIterator() -> AnyIterator<node.v1alpha1.RuntimeClass> {
		return AnyIterator(self.items.makeIterator())
	}
}

