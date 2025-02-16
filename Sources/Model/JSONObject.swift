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

// MARK: - JSONObject

/// JSONObject acts a simple wrapper type around arbitrary JSON, that is modelled as a `Dictionary<String, Any>`
///
/// This type is used instead of the dictionary in the following types:
/// - apiextensions.v1.CustomResourceValidation
/// - apps.v1.ControllerRevision
/// - meta.v1.ManagedFieldsEntry
/// - meta.v1.WatchEvent
/// - resource.v1alpha3.AllocatedDeviceStatus
/// - resource.v1alpha3.OpaqueDeviceConfiguration
///
/// in order to allow for implementing ``Hashable`` protocol
///
/// The implementation assumes a correct JSON object and uses a forced ``JSONSerialization`` in order
/// to convert the dictionary to a ``Data`` instance, which in turn is used for equality and hashing.
public struct JSONObject: Hashable, Codable, Sendable {

	/// A dictionary holding the JSON properties
	public var properties: Dictionary<String, any Sendable>

	/// Constructs an instance of JsonField given a Dictionary representation.
	///
	/// - Parameter properties: A JSON dictionary
	public init(properties: Dictionary<String, any Sendable>) {
		self.properties = properties
	}

	public static func == (lhs: JSONObject, rhs: JSONObject) -> Bool {
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys

		let lhsData = try! encoder.encode(lhs)
		let rhsData = try! encoder.encode(rhs)
		return lhsData == rhsData
	}

	public func hash(into hasher: inout Hasher) {
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys

		let data = try! encoder.encode(self)
		hasher.combine(data)
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: JSONCodingKeys.self)
		var properties = [String: any Sendable]()

		for key in container.allKeys {
			properties[key.stringValue] = try container.decodeAnyIfPresent(forKey: key)
		}

		self.properties = properties
	}

	public func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: JSONCodingKeys.self)

		try properties.forEach { key, value in
			try encodingContainer.encodeAny(value, forKey: JSONCodingKeys(stringValue: key)!)
		}
	}
}
