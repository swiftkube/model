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

public extension meta.v1 {

	///
	/// Event represents a single event to a watched resource.
	///
	struct WatchEvent: KubernetesResource {
		///
		/// Object is:
		///  * If Type is Added or Modified: the new state of the object.
		///  * If Type is Deleted: the state of the object immediately before deletion.
		///  * If Type is Error: *Status is recommended; other types may make sense
		///    depending on context.
		///
		public var object: [String: Any]
		///
		/// No description
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			object: [String: Any],
			type: String
		) {
			self.object = object
			self.type = type
		}
	}
}

extension meta.v1.WatchEvent {

	private enum CodingKeys: String, CodingKey {
		case object = "object"
		case type = "type"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.object = try container.decode([String: Any].self, forKey: .object)
		self.type = try container.decode(String.self, forKey: .type)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(self.object, forKey: .object)
		try container.encode(self.type, forKey: .type)
	}
}

