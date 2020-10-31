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

public extension sk {

	static func localObjectReference(name: String) -> core.v1.LocalObjectReference {
		return core.v1.LocalObjectReference(name: name)
	}

	static func objectReference(gvk: GroupVersionKind, _ block: (inout core.v1.ObjectReference) -> Void) -> core.v1.ObjectReference {
		return build(core.v1.ObjectReference(apiVersion: gvk.apiVersion, kind: gvk.kind), with: block)
	}
}
