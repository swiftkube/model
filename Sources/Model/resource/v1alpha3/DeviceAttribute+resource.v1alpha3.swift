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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.32.0
/// resource.v1alpha3.DeviceAttribute
///

import Foundation

// MARK: - resource.v1alpha3.DeviceAttribute

public extension resource.v1alpha3 {

	///
	/// DeviceAttribute must have exactly one field set.
	///
	struct DeviceAttribute: KubernetesResource {
		///
		/// BoolValue is a true/false value.
		///
		public var bool: Bool?
		///
		/// IntValue is a number.
		///
		public var int: Int64?
		///
		/// StringValue is a string. Must not be longer than 64 characters.
		///
		public var string: String?
		///
		/// VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
		///
		public var version: String?
		///
		/// Default memberwise initializer
		///
		public init(
			bool: Bool? = nil,
			int: Int64? = nil,
			string: String? = nil,
			version: String? = nil
		) {
			self.bool = bool
			self.int = int
			self.string = string
			self.version = version
		}
	}
}

///
/// Codable conformance
///
public extension resource.v1alpha3.DeviceAttribute {

	private enum CodingKeys: String, CodingKey {

		case bool = "bool"
		case int = "int"
		case string = "string"
		case version = "version"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.bool = try container.decodeIfPresent(Bool.self, forKey: .bool)
		self.int = try container.decodeIfPresent(Int64.self, forKey: .int)
		self.string = try container.decodeIfPresent(String.self, forKey: .string)
		self.version = try container.decodeIfPresent(String.self, forKey: .version)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(bool, forKey: .bool)
		try encodingContainer.encode(int, forKey: .int)
		try encodingContainer.encode(string, forKey: .string)
		try encodingContainer.encode(version, forKey: .version)
	}
}
