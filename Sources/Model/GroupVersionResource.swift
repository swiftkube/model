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

// MARK: - GroupVersionResource

///
/// GroupVersionResource unambiguously identifies a resource.
///
public struct GroupVersionResource: Hashable, Codable {
	/// The group of the resource.
	public let group: String
	/// The version of the resource.
	public let version: String
	/// The plural name of the resource.
	public let resource: String

	/// Creates a new GroupVersionResource given its parts.
	/// - Parameters:
	///   - group: The group of the resource.
	///   - version: The version of the resource.
	///   - resource: The plural name of the resource.
	public init(group: String, version: String, resource: String) {
		self.group = group
		self.version = version
		self.resource = resource
	}

	/// Create a new GroupVersionResource given its `apiVersion` and `resource`.
	/// - Parameter apiVersion: The `apiVersion` of the GVR, e.g. apps/v1
	/// - Parameter resource: The plural name of the resource.
	public init?(apiVersion: String, resource: String) {
		let parts = apiVersion.split(separator: "/")

		if parts.count == 1 {
			self.group = "core"
			self.version = String(parts[0])
			self.resource = resource
		} else if parts.count == 2 {
			self.group = String(parts[0])
			self.version = String(parts[1])
			self.resource = resource
		} else {
			return nil
		}
	}

	/// The API Version of this GroupVersionResource.
	public var apiVersion: String {
		if group == "core" {
			return version
		} else {
			return "\(group)/\(version)"
		}
	}

	/// The URL path prefix for this APIVersion.
	///
	/// `/api` for the legacy `core` group and `/apis` for the named groups.
	public var urlPathPrefix: String {
		if group == "core" {
			return "/api"
		} else {
			return "/apis"
		}
	}

	/// The URL path for this APIVersion in the form of `/api/version` or `/apis/group/version`.
	public var urlPath: String {
		if group == "core" {
			return "\(urlPathPrefix)/\(version)"
		} else {
			return "\(urlPathPrefix)/\(group)/\(version)"
		}
	}
}
