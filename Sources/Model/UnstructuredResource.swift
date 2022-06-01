//
// Copyright 2020 Swiftkube Project
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

import AnyCodable
import Foundation

// MARK: - UnstructuredResource

/// Unstructured allows objects that do not have registered `KubernetesAPIResource`s to be manipulated
/// generically. This can be used to deal with the API objects from a plug-in. Unstructured
/// objects still have functioning TypeMeta features-- kind, version, etc.
///
@dynamicMemberLookup
public struct UnstructuredResource: KubernetesAPIResource {

	private var properties = [String: AnyCodable]()

	/// This resource's `apiVersion`.
	public var apiVersion: String {
		properties["apiVersion"]?.value as? String ?? ""
	}

	/// This resource's `kind`.
	public var kind: String {
		properties["kind"]?.value as? String ?? ""
	}

	/// This associated `metadata` of this resource.
	public var metadata: meta.v1.ObjectMeta? {
		properties["metadata"]?.value as? meta.v1.ObjectMeta
	}

	public subscript<T>(dynamicMember key: String) -> T? {
		properties[key]?.value as? T
	}
}
