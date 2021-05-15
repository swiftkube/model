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

struct BePair {
    let base: Int
    let exponent: Int
    let powValue: Decimal
    init(base: Int, exponent: Int) {
        self.base = base
        self.exponent = exponent
        if exponent < 0 {
            powValue = 1 / pow(Decimal(base), -1 * exponent)
        } else {
            powValue = pow(Decimal(base), exponent)
        }
    }
}

struct DecSuffixed {
    let key: String
    let bePair: BePair
}

//case "Ki", "Mi", "Gi", "Ti", "Pi", "Ei":
//unitType = .bianrySI
let decBinarySI = [
    DecSuffixed(key: "Ki", bePair: BePair(base: 2, exponent: 10)),
    DecSuffixed(key: "Mi", bePair: BePair(base: 2, exponent: 20)),
    DecSuffixed(key: "Gi", bePair: BePair(base: 2, exponent: 30)),
    DecSuffixed(key: "Ti", bePair: BePair(base: 2, exponent: 40)),
    DecSuffixed(key: "Pi", bePair: BePair(base: 2, exponent: 50)),
    DecSuffixed(key: "Ei", bePair: BePair(base: 2, exponent: 60)),
]

//case "m", "k", "M", "G", "T", "P", "e":
//unitType = .decimalSI
let decDecimalSINag = [
    DecSuffixed(key: "m", bePair: BePair(base: 10, exponent: -3)),
    DecSuffixed(key: "u", bePair: BePair(base: 10, exponent: -6)),
    DecSuffixed(key: "n", bePair: BePair(base: 10, exponent: -9)),
]
let decDecimalSIPos = [
    DecSuffixed(key: "", bePair: BePair(base: 10, exponent: 0)),
    DecSuffixed(key: "k", bePair: BePair(base: 10, exponent: 3)),
    DecSuffixed(key: "M", bePair: BePair(base: 10, exponent: 6)),
    DecSuffixed(key: "G", bePair: BePair(base: 10, exponent: 9)),
    DecSuffixed(key: "T", bePair: BePair(base: 10, exponent: 12)),
    DecSuffixed(key: "P", bePair: BePair(base: 10, exponent: 15)),
    DecSuffixed(key: "E", bePair: BePair(base: 10, exponent: 18)),
]
let decDecimalSI = decDecimalSINag + decDecimalSIPos


let frndBinarySI = Array(decBinarySI.reversed())
var frndDecimalSI = Array((decDecimalSINag.reversed() + decDecimalSIPos).reversed())


// TODO: Implement proper quantity serde: https://github.com/kubernetes/apimachinery/blob/master/pkg/api/resource/quantity.go
public struct Quantity: ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {
    let value: String
    
    var decimalValue: Decimal = 0
    var unit: String = ""
    var unitType: UnitType = .decimalSI
    
    public func getOriginalValue() -> String {
        return value
    }
    
    public func getValue() -> Decimal {
        return decimalValue
    }
    
    public init(stringLiteral value: String) {
        self.value = value
        self.parseData(str: value)
    }
    
    public init(integerLiteral value: Int) {
        self.init(stringLiteral: "\(value)")
    }
    
    public init(floatLiteral value: Double) {
        self.init(stringLiteral: "\(value)")
    }
    
    mutating func parseData(str: String) {
        let range = NSRange(location: 0, length: str.count)
        let regex = try! NSRegularExpression(pattern: "^[0-9.e]+", options: [])
        let results = regex.matches(in: str, options: [], range: range)
        if results.count != 1 {
            return
        }
        let r = results[0].range
        
        guard let num = Decimal(string: str[r.location..<(r.location + r.length)]) else {
            return
        }
        
        unit = str[(r.location + r.length)...]
        switch unit {
        case "Ki", "Mi", "Gi", "Ti", "Pi", "Ei":
            unitType = .bianrySI
        case "", "n", "u", "m", "k", "M", "G", "T", "P", "E":
            unitType = .decimalSI
        default:
            return
        }
        self.decimalValue = num * getUnitMultiple()
    }
    
    func getUnitMultiple() -> Decimal {
        var arr : [DecSuffixed] = []
        switch unitType {
        case .bianrySI:
            arr = decBinarySI
        case .decimalSI:
            arr = decDecimalSI
        }
        for dec in arr {
            if dec.key == unit {
                return dec.bePair.powValue
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
    public func toString() -> String {
        if decimalValue == 0 {
            return "0"
        }
        var arr : [DecSuffixed] = []
        switch unitType {
        case .bianrySI:
            arr = decBinarySI
        case .decimalSI:
            arr = decDecimalSI
        }
        let hasDecimal = "\(decimalValue)".firstIndex(of: ".") != nil
        var i = 0
        for dec in arr {
            if hasDecimal {
                if dec.bePair.exponent > 0 {
                    break
                }
                i += 1
                let nagPow = decimalValue / dec.bePair.powValue
                let tmpHasDigital = "\(nagPow)".firstIndex(of: ".")  != nil
                if tmpHasDigital {
                    continue
                }
                break
            } else {
                if dec.bePair.exponent < 0 {
                    i += 1
                    continue
                }
                
                let numInt = Int64(truncating: NSDecimalNumber(decimal: decimalValue))
                let vInt = Int64(truncating: NSDecimalNumber(decimal: dec.bePair.powValue))
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
        let tmp = decimalValue / dec.bePair.powValue
        return "\(tmp)\(dec.key)"
    }
    
    
    ///
    /// toFriendlyString
    /// unit is matched from large to small
    ///
    ///  33.01 =>  33.01
    ///
    public func toFriendlyString() -> String {
        if decimalValue == 0 {
            return "0"
        }
        var arr : [DecSuffixed] = []
        switch unitType {
        case .bianrySI:
            arr = frndBinarySI
        case .decimalSI:
            arr = frndDecimalSI
        }
        
        for dec in arr {
            let t = decimalValue / dec.bePair.powValue
            if t > 1 {
                return "\(t)\(dec.key)"
            }
        }
        return "\(decimalValue)"
    }
    
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
