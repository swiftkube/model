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

public protocol KubernetesResource: Codable {}

public protocol KubernetesResourceList: Codable {
	associatedtype Item: KubernetesResource

	var items: [Item] { get }
}

public protocol ResourceWithMetadata: KubernetesResource {
	var metadata: meta.v1.ObjectMeta? { get }
	var name: String? { get }
}

extension ResourceWithMetadata {
	public var name: String? {
		return self.metadata?.name
	}
}

public protocol KubernetesAPIResource: KubernetesResource {
	static var apiVersion: APIVersion { get }

	var apiVersion: String { get }
	var kind: String { get }
}

public struct GroupVersionKind {
	public let group: String
	public let version: String
	public let kind: String

	public var pluralName: String {
		return kind.pluralName
	}

	init?<R>(of resource: R) where R: KubernetesAPIResource {
		guard let apiVersion = APIVersion(rawValue: resource.apiVersion) else {
			return nil
		}

		self.group = apiVersion.group
		self.version = apiVersion.version
		self.kind = resource.kind
	}

	init?<R>(of type: R.Type) where R: KubernetesAPIResource {
		self.group = type.apiVersion.group
		self.version = type.apiVersion.version
		self.kind = String(describing: type)
	}
}
