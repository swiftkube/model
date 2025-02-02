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

// MARK: - Quantity

extension String {

	subscript(offset: Int) -> Character {
		self[index(startIndex, offsetBy: offset)]
	}

	subscript(_ range: CountableRange<Int>) -> String {
		let start = index(startIndex, offsetBy: max(0, range.lowerBound))
		let end = index(start, offsetBy: min(count - range.lowerBound,
		                                     range.upperBound - range.lowerBound))
		return String(self[start ..< end])
	}

	subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
		let start = index(startIndex, offsetBy: max(0, range.lowerBound))
		return String(self[start...])
	}
}

// MARK: - UnitType

public enum UnitType {
	case decimalSI
	case binarySI
}

func pow(_ base: Int, _ exponent: Int) -> Decimal {
	if exponent < 0 {
		return 1 / pow(Decimal(base), -1 * exponent)
	} else {
		return pow(Decimal(base), exponent)
	}
}

// MARK: - KeyPair

struct KeyPair {
	let key: String
	let pair: Decimal
}

let decimalSIKeyPairNegative = [
	KeyPair(key: "m", pair: pow(10, -3)),
	KeyPair(key: "u", pair: pow(10, -6)),
	KeyPair(key: "n", pair: pow(10, -9)),
]

let decimalSIKeyPairPositive = [
	KeyPair(key: "", pair: pow(10, 0)),
	KeyPair(key: "k", pair: pow(10, 3)),
	KeyPair(key: "M", pair: pow(10, 6)),
	KeyPair(key: "G", pair: pow(10, 9)),
	KeyPair(key: "T", pair: pow(10, 12)),
	KeyPair(key: "P", pair: pow(10, 15)),
	KeyPair(key: "E", pair: pow(10, 18)),
]

let binarySIKeyPair = [
	KeyPair(key: "Ki", pair: pow(2, 10)),
	KeyPair(key: "Mi", pair: pow(2, 20)),
	KeyPair(key: "Gi", pair: pow(2, 30)),
	KeyPair(key: "Ti", pair: pow(2, 40)),
	KeyPair(key: "Pi", pair: pow(2, 50)),
	KeyPair(key: "Ei", pair: pow(2, 60)),
]

let decimalSIKeyPair = decimalSIKeyPairNegative + decimalSIKeyPairPositive

let binarySIKeyPairFriendly = Array(binarySIKeyPair.reversed())
let decimalSIKeyPairFriendly = Array((decimalSIKeyPairNegative.reversed() + decimalSIKeyPairPositive).reversed())

// MARK: - Quantity

// TODO: Implement proper quantity serde: https://github.com/kubernetes/apimachinery/blob/master/pkg/api/resource/quantity.go
public struct Quantity: ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, CustomStringConvertible, Hashable {

	let value: String
	var ok: Bool = true
	var decimalValue: Decimal = 0
	var unit: String = ""
	var unitType: UnitType = .decimalSI

	public var description: String = "0"

	public func getOriginalValue() -> String {
		value
	}

	public func getValue() -> Decimal? {
		if !ok {
			return nil
		}
		return decimalValue
	}

	public init?(_ string: String) {
		self.value = string
		if (try? parseData(str: string)) == true {
			self.description = Self.description(decimalValue, unitType)
			return
		}
		return nil
	}

	public init(stringLiteral value: String) {
		guard let initialized = Self(value) else {
			self.value = value
			self.ok = false
			print("Invalid string literal for Quantity(\(value))")
			return
		}
		self = initialized
	}

	public init(integerLiteral value: Int) {
		self.value = "\(value)"
		if value < 0 {
			self.ok = false
			print("Invalid integer literal for Quantity(\(value))")
			return
		}
		self.ok = true
		self.unit = ""
		self.unitType = .decimalSI
		self.decimalValue = Decimal(value)
	}

	public init(floatLiteral value: Double) {
		self.value = "\(value)"
		if value < 0 {
			self.ok = false
			print("Invalid float literal for Quantity(\(value))")
			return
		}
		self.ok = true
		self.unit = ""
		self.unitType = .decimalSI
		self.decimalValue = Decimal(value)
	}

	mutating func parseData(str: String) throws -> Bool {
		let range = NSRange(location: 0, length: str.count)
		let regex = try! NSRegularExpression(pattern: "^\\d*\\.?\\d*e?\\d*", options: [])
		let results = regex.matches(in: str, options: [], range: range)
		if results.count != 1 {
			throw DecodingError.dataCorrupted(DecodingError.Context(
				codingPath: [],
				debugDescription: "Cannot decode value: " + str
			))
		}
		let r = results[0].range
		guard let num = Decimal(string: str[r.location ..< (r.location + r.length)]) else {
			return false
		}
		if num < 0 {
			return false
		}

		let unit = str[(r.location + r.length)...]
		switch unit {
		case "Ki", "Mi", "Gi", "Ti", "Pi", "Ei":
			unitType = .binarySI
		case "", "n", "u", "m", "k", "M", "G", "T", "P", "E":
			unitType = .decimalSI
		default:
			throw DecodingError.dataCorrupted(DecodingError.Context(
				codingPath: [],
				debugDescription: "Cannot decode value: " + str
			))
		}
		self.unit = unit
		decimalValue = num * getUnitMultiple()
		return true
	}

	func getUnitMultiple() -> Decimal {
		var arr: [KeyPair] = []
		switch unitType {
		case .binarySI:
			arr = binarySIKeyPair
		case .decimalSI:
			arr = decimalSIKeyPair
		}
		for dec in arr {
			if dec.key == unit {
				return dec.pair
			}
		}
		return 1
	}

	lazy public var friendlyDescription: String = Self.friendlyDescription(decimalValue, unitType)
}

public extension Quantity {

	///
	/// friendlyDescription
	/// unit is matched from large to small
	///
	///  33.01 =>  33.01
	///
	static func friendlyDescription (_ num: Decimal, _ unitType: UnitType) -> String {
		if num == 0 {
			return "0"
		}
		var arr: [KeyPair] = []
		switch unitType {
		case .binarySI:
			arr = binarySIKeyPairFriendly
		case .decimalSI:
			arr = decimalSIKeyPairFriendly
		}

		for dec in arr {
			let t = num / dec.pair
			if t >= 1 {
				return "\(t)\(dec.key)"
			}
		}
		return "\(num)"
	}

	///
	/// description
	/// unit is matched from small to large
	///
	///  33.01 =>  33010m
	///
	static func description (_ num: Decimal, _ unitType: UnitType) -> String {
		if num == 0 {
			return "0"
		}
		var arr: [KeyPair] = []
		switch unitType {
		case .binarySI:
			arr = binarySIKeyPair
		case .decimalSI:
			arr = decimalSIKeyPair
		}
		let hasDecimal = "\(num)".firstIndex(of: ".") != nil
		if unitType == .binarySI, num < 1 {
			return "\(num)"
		}
		var i = 0
		for dec in arr {
			if hasDecimal {
				if dec.pair > 1 {
					break
				}
				i += 1
				let nagPow = num / dec.pair
				let tmpHasDigital = "\(nagPow)".firstIndex(of: ".") != nil
				if tmpHasDigital {
					continue
				}
				break
			} else {
				if dec.pair < 1 {
					i += 1
					continue
				}

				let numInt = Int64(truncating: NSDecimalNumber(decimal: num))
				let vInt = Int64(truncating: NSDecimalNumber(decimal: dec.pair))
				let remain = numInt % vInt
				if remain == 0 {
					i += 1
					continue
				}
				break
			}
		}
		if i == 0 {
			return "\(num)"
		}
		let dec = arr[i - 1]
		let tmp = num / dec.pair
		return "\(tmp)\(dec.key)"
	}
}

// MARK: Codable

///
/// Codable conformance.
///
extension Quantity: Codable {

	public init(from decoder: Decoder) throws {
		if let value = try? decoder.singleValueContainer().decode(String.self) {
			self.init(stringLiteral: value)
		} else if let value = try? decoder.singleValueContainer().decode(Int.self) {
			self.init(integerLiteral: value)
		} else {
			let value = try decoder.singleValueContainer().decode(Double.self)
			self.init(floatLiteral: value)
		}
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(value)
	}
}
