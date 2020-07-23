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
	/// SecretList is a list of Secret.
	///
	struct SecretList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = core.v1.Secret
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "SecretList"
		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// Items is a list of secret objects. More info: https://kubernetes.io/docs/concepts/configuration/secret
		///
		public var items: [core.v1.Secret]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta?, 
			items: [core.v1.Secret]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

extension core.v1.SecretList: Sequence {

	public typealias Element = core.v1.Secret

	public func makeIterator() -> AnyIterator<core.v1.Secret> {
		return AnyIterator(self.items.makeIterator())
	}
}

