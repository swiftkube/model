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
/// apiextensions.v1.CustomResourceColumnDefinition
///

import Foundation

// MARK: - apiextensions.v1.CustomResourceColumnDefinition

public extension apiextensions.v1 {

	///
	/// CustomResourceColumnDefinition specifies a column for server side printing.
	///
	struct CustomResourceColumnDefinition: KubernetesResource {
		///
		/// description is a human readable description of this column.
		///
		public var description: String?
		///
		/// format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
		///
		public var format: String?
		///
		/// jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
		///
		public var jsonPath: String
		///
		/// name is a human readable name for the column.
		///
		public var name: String
		///
		/// priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
		///
		public var priority: Int32?
		///
		/// type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			description: String? = nil,
			format: String? = nil,
			jsonPath: String,
			name: String,
			priority: Int32? = nil,
			type: String
		) {
			self.description = description
			self.format = format
			self.jsonPath = jsonPath
			self.name = name
			self.priority = priority
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension apiextensions.v1.CustomResourceColumnDefinition {

	private enum CodingKeys: String, CodingKey {

		case description = "description"
		case format = "format"
		case jsonPath = "jsonPath"
		case name = "name"
		case priority = "priority"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.description = try container.decodeIfPresent(String.self, forKey: .description)
		self.format = try container.decodeIfPresent(String.self, forKey: .format)
		self.jsonPath = try container.decode(String.self, forKey: .jsonPath)
		self.name = try container.decode(String.self, forKey: .name)
		self.priority = try container.decodeIfPresent(Int32.self, forKey: .priority)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(description, forKey: .description)
		try encodingContainer.encode(format, forKey: .format)
		try encodingContainer.encode(jsonPath, forKey: .jsonPath)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(priority, forKey: .priority)
		try encodingContainer.encode(type, forKey: .type)
	}
}
