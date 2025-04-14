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

// MARK: - AnyNullWrapper

protocol AnyNullWrapper: Sendable, Encodable {
	func getValue<T>() -> T?
}

// MARK: - NullWrapper

public struct NullWrapper<T>: Sendable, Encodable, AnyNullWrapper where T: Encodable, T: Sendable {

	let wrappedValue: T?

	public init(wrappedValue: T?) {
		self.wrappedValue = wrappedValue
	}

	func getValue<U>() -> U? {
		wrappedValue as? U
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		switch wrappedValue {
		case let .some(value): try container.encode(value)
		case .none: try container.encodeNil()
		}
	}
}
