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

// MARK: - GroupVersionKind

///
/// GroupVersionKind unambiguously identifies a kind.
///
public struct GroupVersionKind: Equatable {
	/// The group of the resource.
	public let group: String
	/// The version of the resource.
	public let version: String
	/// The kind of the resource.
	public let kind: String

	/// Creates a new GroupVersionKind given its parts.
	/// - Parameters:
	///   - group: The group of the resource.
	///   - version: The version of the resource.
	///   - kind: The kind of the resource.
	public init(group: String, version: String, kind: String) {
		self.group = group
		self.version = version
		self.kind = kind
	}

	/// Create a new GroupVersionKind given an APIVersion and Kind.
	/// - Parameter rawValue: The raw string representation of the GVK, e.g. apps/v1/Deployment
	public init?(apiVersion: String, kind: String) {
		let parts = apiVersion.split(separator: "/")

		if parts.count == 1 {
			self.group = "core"
			self.version = String(parts[0])
			self.kind = kind
		} else if parts.count == 2 {
			self.group = String(parts[0])
			self.version = String(parts[1])
			self.kind = kind
		} else {
			return nil
		}
	}

	/// Create a new GroupVersionKind given its raw string representation.
	/// - Parameter rawValue: The raw string representation of the GVK, e.g. apps/v1/Deployment
	public init?(of rawValue: String) {
		let parts = rawValue.split(separator: "/")

		if parts.count == 2 {
			self.group = "core"
			self.version = String(parts[0])
			self.kind = String(parts[1])
		} else if parts.count == 3 {
			self.group = String(parts[0])
			self.version = String(parts[1])
			self.kind = String(parts[2])
		} else {
			return nil
		}
	}

	/// The API Version of this GroupVersionKind.
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
	var urlPathPrefix: String {
		if group == "core" {
			return "/api"
		} else {
			return "/apis"
		}
	}

	/// The URL path for this APIVersion in the form of `/api/version` or `/apis/group/version`.
	var urlPath: String {
		if group == "core" {
			return "\(urlPathPrefix)/\(version)"
		} else {
			return "\(urlPathPrefix)/\(group)/\(version)"
		}
	}

	public var groupKind: GroupKind {
		GroupKind(group: group, kind: kind)
	}

	public var groupVersion: GroupVersion {
		GroupVersion(group: group, version: version)
	}
}

// MARK: - GroupKind

///
/// GroupKind specifies a Group and a Kind, but does not force a version.
/// This is useful for identifying concepts during lookup stages without having partially valid types.
public struct GroupKind {
	/// The group of the resource.
	public let group: String
	/// The kind of the resource.
	public let kind: String

	/// Construct a GroupVersionKind given a resource Version.
	///
	/// - Parameter version: The resource version.
	public func withVersion(_ version: String) -> GroupVersionKind {
		GroupVersionKind(group: group, version: version, kind: kind)
	}
}

// MARK: - GroupVersion

///
/// GroupVersion contains the Group and the Version, which uniquely identifies the API.
///
public struct GroupVersion {
	/// The group of the resource.
	public let group: String
	/// The version of the resource.
	public let version: String

	/// Construct a GroupVersionKind given a resource Kind.
	///
	/// - Parameter kind: The resource version.
	public func withKind(_ kind: String) -> GroupVersionKind {
		GroupVersionKind(group: group, version: version, kind: kind)
	}
}
