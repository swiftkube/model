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
        let end = index(start, offsetBy: min(self.count - range.lowerBound,
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }
    
    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        return String(self[start...])
    }
}

enum UnitType {
    case decimalSI
    case bianrySI
}

func pow(_ base: Int, _ exponent: Int) -> Decimal {
    if exponent < 0 {
        return 1 / pow(Decimal(base), -1 * exponent)
    } else {
        return pow(Decimal(base), exponent)
    }
}

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
    KeyPair(key: "", pair:  pow(10, 0)),
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
var decimalSIKeyPairFriendly = Array((decimalSIKeyPairNegative.reversed() + decimalSIKeyPairPositive).reversed())

// TODO: Implement proper quantity serde: https://github.com/kubernetes/apimachinery/blob/master/pkg/api/resource/quantity.go
public struct Quantity: ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, CustomStringConvertible {
    
    let value: String
    var ok: Bool = true
    var decimalValue: Decimal = 0
    var unit: String = ""
    var unitType: UnitType = .decimalSI
    
    public var description: String = "0"
    
    public func getOriginalValue() -> String {
        return value
    }
    
    public func getValue() -> Decimal {
        return decimalValue
    }
    
    public init(stringLiteral value: String) {
        self.value = value
        do {
            try self.parseData(str: value)
            description = toString()
        } catch {
            ok = false
        }
    }
    
    public init(integerLiteral value: Int) {
        self.init(stringLiteral: "\(value)")
    }
    
    public init(floatLiteral value: Double) {
        self.init(stringLiteral: "\(value)")
    }
    
    mutating func parseData(str: String) throws {
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
        guard let num = Decimal(string: str[r.location..<(r.location + r.length)]) else {
            return
        }
        
        let unit = str[(r.location + r.length)...]
        switch unit {
        case "Ki", "Mi", "Gi", "Ti", "Pi", "Ei":
            unitType = .bianrySI
        case "", "n", "u", "m", "k", "M", "G", "T", "P", "E":
            unitType = .decimalSI
        default:
            throw DecodingError.dataCorrupted(DecodingError.Context(
                codingPath: [],
                debugDescription: "Cannot decode value: " + str
            ))
        }
        self.unit = unit
        self.decimalValue = num * getUnitMultiple()
    }
    
    func getUnitMultiple() -> Decimal {
        var arr : [KeyPair] = []
        switch unitType {
        case .bianrySI:
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
    
    ///
    /// toString
    /// unit is matched from small to large
    ///
    ///  33.01 =>  33010m
    ///
    func toString() -> String {
        if decimalValue == 0 {
            return "0"
        }
        var arr : [KeyPair] = []
        switch unitType {
        case .bianrySI:
            arr = binarySIKeyPair
        case .decimalSI:
            arr = decimalSIKeyPair
        }
        let hasDecimal = "\(decimalValue)".firstIndex(of: ".") != nil
        var i = 0
        for dec in arr {
            if hasDecimal {
                if dec.pair > 1 {
                    break
                }
                i += 1
                let nagPow = decimalValue / dec.pair
                let tmpHasDigital = "\(nagPow)".firstIndex(of: ".")  != nil
                if tmpHasDigital {
                    continue
                }
                break
            } else {
                if dec.pair < 1 {
                    i += 1
                    continue
                }
                
                let numInt = Int64(truncating: NSDecimalNumber(decimal: decimalValue))
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
            return "\(decimalValue)"
        }
        let dec = arr[i-1]
        let tmp = decimalValue / dec.pair
        return "\(tmp)\(dec.key)"
    }
    
    
    ///
    /// friendlyDescription
    /// unit is matched from large to small
    ///
    ///  33.01 =>  33.01
    ///
    lazy public var friendlyDescription: String = {
        if decimalValue == 0 {
            return "0"
        }
        var arr : [KeyPair] = []
        switch unitType {
        case .bianrySI:
            arr = binarySIKeyPairFriendly
        case .decimalSI:
            arr = decimalSIKeyPairFriendly
        }
        
        for dec in arr {
            let t = decimalValue / dec.pair
            if t > 1 {
                return "\(t)\(dec.key)"
            }
        }
        return "\(decimalValue)"
    }()
    
}

// MARK: Codable

///
/// Codable confromace.
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
