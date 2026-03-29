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

#if canImport(FoundationEssentials)
import FoundationEssentials
#else
import Foundation
#endif

// MARK: - JSONField

/// A type-safe representation of an arbitrary JSON value.
///
/// Used for Kubernetes resource fields that accept arbitrary JSON (e.g. `object` properties
/// in the OpenAPI spec). This replaces the use of `Any` with a concrete, `Codable`,
/// `Hashable`, and `Sendable` type.
public enum JSONField: Hashable, Sendable {
	case null
	case bool(Bool)
	case int(Int)
	case double(Double)
	case string(String)
	case array([JSONField])
	case object([String: JSONField])
}

// MARK: Codable

extension JSONField: Codable {

	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		if container.decodeNil() {
			self = .null
		} else if let value = try? container.decode(Bool.self) {
			self = .bool(value)
		} else if let value = try? container.decode(Int.self) {
			self = .int(value)
		} else if let value = try? container.decode(Double.self) {
			self = .double(value)
		} else if let value = try? container.decode(String.self) {
			self = .string(value)
		} else if let value = try? container.decode([JSONField].self) {
			self = .array(value)
		} else if let value = try? container.decode([String: JSONField].self) {
			self = .object(value)
		} else {
			throw DecodingError.dataCorrupted(
				DecodingError.Context(
					codingPath: decoder.codingPath,
					debugDescription: "Cannot decode JSONField"
				)
			)
		}
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .null:
			try container.encodeNil()
		case .bool(let value):
			try container.encode(value)
		case .int(let value):
			try container.encode(value)
		case .double(let value):
			try container.encode(value)
		case .string(let value):
			try container.encode(value)
		case .array(let value):
			try container.encode(value)
		case .object(let value):
			try container.encode(value)
		}
	}
}
