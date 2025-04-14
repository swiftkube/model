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

// MARK: - JSONCodingKeys

public struct JSONCodingKeys: CodingKey {
	public var stringValue: String
	public var intValue: Int?

	public init?(stringValue: String) {
		self.stringValue = stringValue
	}

	public init?(intValue: Int) {
		self.init(stringValue: "\(intValue)")
		self.intValue = intValue
	}
}

public extension KeyedDecodingContainer {

	func decodeAnyIfPresent(forKey key: K) throws -> (any Sendable)? {
		guard contains(key), try decodeNil(forKey: key) == false else {
			return nil
		}

		return try decodeAny(forKey: key)
	}

	func decodeAny(forKey key: K) throws -> any Sendable {
		if let value = try? decode(Bool.self, forKey: key) {
			return value
		} else if let value = try? decode(Int.self, forKey: key) {
			return value
		} else if let value = try? decode(UInt.self, forKey: key) {
			return value
		} else if let value = try? decode(Double.self, forKey: key) {
			return value
		} else if let value = try? decode(String.self, forKey: key) {
			return value
		} else if let value = try? decode([String: any Sendable].self, forKey: key) {
			return value
		} else if let value = try? decode([any Sendable].self, forKey: key) {
			return value
		} else if let nilValue = try? decodeNil(forKey: key), nilValue == true {
			return nilValue
		} else {
			let context = DecodingError.Context(
				codingPath: codingPath,
				debugDescription: "Cannot decode value"
			)
			throw DecodingError.dataCorrupted(context)
		}
	}

	func decode(_ type: [String: any Sendable].Type, forKey key: K) throws -> [String: any Sendable] {
		let container = try nestedContainer(keyedBy: JSONCodingKeys.self, forKey: key)
		return try container.decode(type)
	}

	func decodeIfPresent(_ type: [String: any Sendable].Type, forKey key: K) throws -> [String: any Sendable]? {
		guard contains(key), try decodeNil(forKey: key) == false else {
			return nil
		}
		return try decode(type, forKey: key)
	}

	func decode(_ type: [String: any Sendable]?.Type, forKey key: K) throws -> [String: any Sendable]? {
		try decodeIfPresent([String: any Sendable]?.self, forKey: key)
	}

	func decodeIfPresent(_ type: [String: any Sendable]?.Type, forKey key: K) throws -> [String: any Sendable]? {
		guard contains(key), try decodeNil(forKey: key) == false else {
			return nil
		}
		return try decode(type, forKey: key)
	}

	func decode(_ type: [any Sendable].Type, forKey key: K) throws -> [any Sendable] {
		var container = try nestedUnkeyedContainer(forKey: key)
		return try container.decode(type)
	}

	func decodeIfPresent(_ type: [any Sendable].Type, forKey key: K) throws -> [any Sendable]? {
		guard contains(key), try decodeNil(forKey: key) == false else {
			return nil
		}
		return try decode(type, forKey: key)
	}

	func decode(_ type: [any Sendable]?.Type, forKey key: K) throws -> [any Sendable]? {
		try decodeIfPresent([any Sendable]?.self, forKey: key)
	}

	func decodeIfPresent(_ type: [any Sendable]?.Type, forKey key: K) throws -> [any Sendable]? {
		guard contains(key), try decodeNil(forKey: key) == false else {
			return nil
		}
		return try decode(type, forKey: key)
	}

	func decode(_ type: [String: any Sendable].Type) throws -> [String: any Sendable] {
		var dictionary = [String: any Sendable]()

		for key in allKeys {
			if let value = try? decode(Bool.self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let value = try? decode(Int.self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let value = try? decode(UInt.self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let value = try? decode(Double.self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let value = try? decode(String.self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let value = try? decode([String: any Sendable].self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let value = try? decode([any Sendable].self, forKey: key) {
				dictionary[key.stringValue] = value
			} else if let nilValue = try? decodeNil(forKey: key), nilValue == true {
				dictionary[key.stringValue] = nil
			} else {
				let context = DecodingError.Context(
					codingPath: codingPath,
					debugDescription: "Cannot decode value"
				)
				throw DecodingError.dataCorrupted(context)
			}
		}
		return dictionary
	}
}

public extension UnkeyedDecodingContainer {

	mutating func decode(_ type: [String: any Sendable].Type) throws -> [String: any Sendable] {
		let container = try nestedContainer(keyedBy: JSONCodingKeys.self)
		return try container.decode(type)
	}

	mutating func decodeIfPresent(_ type: [String: any Sendable].Type) throws -> [String: any Sendable]? {
		guard try !isAtEnd && !decodeNil() else { return nil }
		return try decode(type)
	}

	mutating func decode(_ type: [any Sendable].Type) throws -> [any Sendable] {
		var array: [any Sendable] = []

		while isAtEnd == false {
			if let value = try? decode(Bool.self) {
				array.append(value)
			} else if let value = try? decode(Int.self) {
				array.append(value)
			} else if let value = try? decode(UInt.self) {
				array.append(value)
			} else if let value = try? decode(Double.self) {
				array.append(value)
			} else if let value = try? decode(String.self) {
				array.append(value)
			} else if let value = try? decode([String: any Sendable].self) {
				array.append(value)
			} else if var nested = try? nestedUnkeyedContainer(), let value = try? nested.decode([any Sendable].self) {
				array.append(value)
			} else if let nilValue = try? decodeNil(), nilValue == true {
				array.append(Sendable?.none as any Sendable)
			} else {
				let context = DecodingError.Context(
					codingPath: codingPath,
					debugDescription: "Cannot decode value"
				)
				throw DecodingError.dataCorrupted(context)
			}
		}
		return array
	}
}

public extension KeyedEncodingContainerProtocol where Key == JSONCodingKeys {

	mutating func encodeAny(_ value: Any, forKey key: Key) throws {
		switch value {
		case let value as Bool:
			try encode(value, forKey: key)
		case let value as Int:
			try encode(value, forKey: key)
		case let value as Int8:
			try encode(value, forKey: key)
		case let value as Int16:
			try encode(value, forKey: key)
		case let value as Int32:
			try encode(value, forKey: key)
		case let value as Int64:
			try encode(value, forKey: key)
		case let value as UInt:
			try encode(value, forKey: key)
		case let value as UInt8:
			try encode(value, forKey: key)
		case let value as UInt16:
			try encode(value, forKey: key)
		case let value as UInt32:
			try encode(value, forKey: key)
		case let value as UInt64:
			try encode(value, forKey: key)
		case let value as Float:
			try encode(value, forKey: key)
		case let value as Double:
			try encode(value, forKey: key)
		case let value as String:
			try encode(value, forKey: key)
		case let value as [String: Any]:
			try encode(value, forKey: key)
		case let value as [Any]:
			try encode(value, forKey: key)
		case Optional<Any>.none:
			try encodeNil(forKey: key)
		case let value as AnyNullWrapper:
			try encode(value, forKey: key)
		default:
			let context = EncodingError.Context(
				codingPath: codingPath + [key],
				debugDescription: "Invalid JSON value"
			)
			throw EncodingError.invalidValue(value, context)
		}
	}

	mutating func encode(_ value: [String: Any]) throws {
		for (key, value) in value {
			let key = JSONCodingKeys(stringValue: key)!
			switch value {
			case let value as Bool:
				try encode(value, forKey: key)
			case let value as Int:
				try encode(value, forKey: key)
			case let value as Int8:
				try encode(value, forKey: key)
			case let value as Int16:
				try encode(value, forKey: key)
			case let value as Int32:
				try encode(value, forKey: key)
			case let value as Int64:
				try encode(value, forKey: key)
			case let value as UInt:
				try encode(value, forKey: key)
			case let value as UInt8:
				try encode(value, forKey: key)
			case let value as UInt16:
				try encode(value, forKey: key)
			case let value as UInt32:
				try encode(value, forKey: key)
			case let value as UInt64:
				try encode(value, forKey: key)
			case let value as Float:
				try encode(value, forKey: key)
			case let value as Double:
				try encode(value, forKey: key)
			case let value as String:
				try encode(value, forKey: key)
			case let value as [String: Any]:
				try encode(value, forKey: key)
			case let value as [Any]:
				try encode(value, forKey: key)
			case Optional<Any>.none:
				try encodeNil(forKey: key)
			case let value as AnyNullWrapper:
				try encode(value, forKey: key)
			default:
				let context = EncodingError.Context(
					codingPath: codingPath + [key],
					debugDescription: "Invalid JSON value"
				)
				throw EncodingError.invalidValue(value, context)
			}
		}
	}
}

public extension KeyedEncodingContainerProtocol {

	mutating func encode(_ value: [String: Any]?, forKey key: Key) throws {
		guard let value = value else { return }

		var container = nestedContainer(keyedBy: JSONCodingKeys.self, forKey: key)
		try container.encode(value)
	}

	mutating func encode(_ value: [Any]?, forKey key: Key) throws {
		guard let value = value else { return }

		var container = nestedUnkeyedContainer(forKey: key)
		try container.encode(value)
	}
}

public extension UnkeyedEncodingContainer {

	mutating func encode(_ value: [String: Any]) throws {
		var container = nestedContainer(keyedBy: JSONCodingKeys.self)
		try container.encode(value)
	}

	mutating func encode(_ value: [Any]) throws {
		for (index, value) in value.enumerated() {
			switch value {
			case let value as Bool:
				try encode(value)
			case let value as Float:
				try encode(value)
			case let value as Double:
				try encode(value)
			case let value as Int:
				try encode(value)
			case let value as Int8:
				try encode(value)
			case let value as Int16:
				try encode(value)
			case let value as Int32:
				try encode(value)
			case let value as Int64:
				try encode(value)
			case let value as UInt:
				try encode(value)
			case let value as UInt8:
				try encode(value)
			case let value as UInt16:
				try encode(value)
			case let value as UInt32:
				try encode(value)
			case let value as UInt64:
				try encode(value)
			case let value as String:
				try encode(value)
			case let value as [String: Any]:
				try encode(value)
			case let value as [Any]:
				var container = nestedUnkeyedContainer()
				try container.encode(value)
			case Optional<Any>.none:
				try encodeNil()
			default:
				let key = JSONCodingKeys(intValue: index).map { [$0] } ?? []
				let context = EncodingError.Context(
					codingPath: codingPath + key,
					debugDescription: "Cannot encode value"
				)
				throw EncodingError.invalidValue(value, context)
			}
		}
	}
}
