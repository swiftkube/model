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

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceColumnDefinition specifies a column for server side printing.
	///
	struct CustomResourceColumnDefinition: KubernetesResource {
		///
		/// JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
		///
		public var JSONPath: String
		///
		/// description is a human readable description of this column.
		///
		public var description: String?
		///
		/// format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
		///
		public var format: String?
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
			JSONPath: String,
			description: String? = nil,
			format: String? = nil,
			name: String,
			priority: Int32? = nil,
			type: String
		) {
			self.JSONPath = JSONPath
			self.description = description
			self.format = format
			self.name = name
			self.priority = priority
			self.type = type
		}
	}
}

