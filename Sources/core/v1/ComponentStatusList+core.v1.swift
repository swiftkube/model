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
	/// Status of all the conditions for the component as a list of ComponentStatus objects.
	///
	struct ComponentStatusList: KubernetesResource, KubernetesResourceList {

		typealias Resource = core.v1.ComponentStatus
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		let apiVersion: String = "v1"

		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		let kind: String = "ComponentStatusList"

		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		var metadata: meta.v1.ListMeta?

		///
		/// List of ComponentStatus objects.
		///
		var items: [core.v1.ComponentStatus]

	}
}

extension core.v1.ComponentStatusList: Sequence {

	public typealias Element = core.v1.ComponentStatus

	public func makeIterator() -> AnyIterator<core.v1.ComponentStatus> {
		return AnyIterator(self.items.makeIterator())
	}
}

