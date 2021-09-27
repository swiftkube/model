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

import Foundation

extension GroupVersionKind {

	/// Creates a new instance of `GroupVersionKind` for the provided resource reference.
	///
	/// A resource reference can be:
	/// - Full API Group string
	/// - Lowecassed singular resource kind
	/// - Lowercased plural resource name
	/// - lowecased short resource name
	///
	/// ```swift
	/// let gvk = GroupVersionKind(rawValue: "apps/v1/Deployment")
	/// let gvk = GroupVersionKind(for: "deployment")
	/// let gvk = GroupVersionKind(for: "deployments")
	/// let gvk = GroupVersionKind(for: "deploy")
	/// ```
	///
	/// - Parameter resourceReference: A resource reference in string form.
	public init(for resourceReference: String) {
    self.init(stringLiteral: resourceReference)
	}
}

public extension GroupVersionKind {

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
