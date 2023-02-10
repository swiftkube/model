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

// MARK: - IntOrString

/// A type that can hold an `Integer` or a `String`.
///
/// When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the
/// inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
public struct IntOrString: ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, Hashable {

	private let value: String

	/// `true` if the inner value represents an `Integer`, `false` otherwise.
	var isInt: Bool {
		Int(value) != nil
	}

	public init(stringLiteral value: String) {
		self.value = value
	}

	public init(integerLiteral value: Int) {
		self.value = String(value)
	}
}

// MARK: Codable

///
/// Codable conformance.
///
extension IntOrString: Codable {

	public init(from decoder: Decoder) throws {
		if let value = try? decoder.singleValueContainer().decode(String.self) {
			self.value = value
		} else {
			let value = try decoder.singleValueContainer().decode(Int.self)
			self.value = String(value)
		}
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		if let intValue = Int(value) {
			try container.encode(intValue)
		} else {
			try container.encode(value)
		}
	}
}
