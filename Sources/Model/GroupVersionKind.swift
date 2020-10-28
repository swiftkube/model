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

///
/// GroupVersionKind unambiguously identifies a kind.
///
public struct GroupVersionKind {
	public let group: String
	public let version: String
	public let kind: String

	/// The `plural` name of a resource `kind`, e.g. `deployments` for `Deployment`.
	public var pluralName: String {
		return kind.pluralName
	}
	
	/// Creates a new instance of `GroupVersionKind` for the given `KubernetesAPIResource`.
	///
	/// - Parameter resource: An instance of a `KubernetesAPIResource`
	public init?<R>(of resource: R) where R: KubernetesAPIResource {
		guard let apiVersion = APIVersion(rawValue: resource.apiVersion) else {
			return nil
		}

		self.group = apiVersion.group
		self.version = apiVersion.version
		self.kind = resource.kind
	}

	/// Creates a new instance of `GroupVersionKind` for the given `KubernetesAPIResource` type.
	///
	/// - Parameter type: A type of a `KubernetesAPIResource`, e.g. `core.v1.Pod.self`.
	public init?<R>(of type: R.Type) where R: KubernetesAPIResource {
		guard let apiVersion = APIVersion(of: type.self) else {
			return nil
		}
		self.group = apiVersion.group
		self.version = apiVersion.version
		self.kind = String(describing: type)
	}
}

extension GroupVersionKind: Equatable {}

extension GroupVersionKind: ExpressibleByStringLiteral {

	public init(stringLiteral value: String) {
		let parts = value.split(separator: ".", maxSplits: 2, omittingEmptySubsequences: true)
		if parts.count == 2 {
			self.group = "core"
			self.version = String(parts[0])
			self.kind = String(parts[1])
		} else {
			self.group = String(parts[0])
			self.version = String(parts[1])
			self.kind = String(parts[2])
		}
	}
}
