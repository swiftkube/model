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

extension GroupVersionKind {

	public init(string: String) throws {
		if let gvk = GroupVersionKind(rawValue: string) {
			self = gvk
			return
		}

		if let gvk = GroupVersionKind.allCases.first(where: { $0.kind.lowercased() == string.lowercased() }) {
			self = gvk
			return
		}

		throw SwiftkubeModelError.unknownAPIObject("Cannot determine GroupVersionKind for: \(string)")
	}
}

public extension GroupVersionKind {

	/// The `plural` name of a resource `kind`, e.g. `deployments` for `Deployment`.
	///
	/// A poor man's implementation for pluralizing Kubernetes objects.
	var pluralName: String {
		return kind.pluralName
	}

	/// The URL path prefix for this APIVersion.
	///
	/// `/api` for the legacy `core` group and `/apis` for the named groups.
	var urlPathPrefix: String {
		if group == "core" {
			return "/api"
		} else {
			return "/apis"
		}
	}

	/// The full URL path for this APIVersion in the form of `/api/version` or `/apis/group/version`.
	var urlPath: String {
		if group == "core" {
			return "\(urlPathPrefix)/\(version)"
		} else {
			return "\(urlPathPrefix)/\(group)/\(version)"
		}
	}
}
   
