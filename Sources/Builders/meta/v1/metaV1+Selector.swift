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

public extension sk {

	static func match(labels: [String: String]) -> meta.v1.LabelSelector {
		meta.v1.LabelSelector(matchExpressions: nil, matchLabels: labels)
	}

	static func match(key: String, _ expression: SelectorExpressionOperator) -> meta.v1.LabelSelectorRequirement {
		meta.v1.LabelSelectorRequirement(key: key, expression: expression)
	}

	static func match(key: String, _ expression: SelectorExpressionOperator) -> meta.v1.LabelSelector {
		let requirement = meta.v1.LabelSelectorRequirement(key: key, expression: expression)
		return meta.v1.LabelSelector(matchExpressions: [requirement], matchLabels: nil)
	}
}

// MARK: - SelectorExpressionOperator

public enum SelectorExpressionOperator {
	case exists
	case doesNotExist
	case `in`([String])
	case notIn([String])

	public var `operator`: String {
		switch self {
		case .exists:
			return "Exists"
		case .doesNotExist:
			return "DoesNotExist"
		case .in:
			return "In"
		case .notIn:
			return "NotIn"
		}
	}

	public var values: [String]? {
		switch self {
		case let .in(values):
			return values
		case let .notIn(values):
			return values
		default:
			return nil
		}
	}
}

public extension meta.v1.LabelSelectorRequirement {

	init(key: String, expression: SelectorExpressionOperator) {
		self.key = key
		self.operator = expression.operator
		self.values = expression.values
	}
}

public extension meta.v1.LabelSelector {

	mutating func match(labels: [String: String]) {
		if matchLabels == nil {
			matchLabels = [:]
		}

		matchLabels?.merge(labels) { _, new in new }
	}

	mutating func match(key: String, _ expression: SelectorExpressionOperator) {
		if matchExpressions == nil {
			matchExpressions = []
		}

		let requirement = meta.v1.LabelSelectorRequirement(key: key, expression: expression)
		matchExpressions?.append(requirement)
	}

	subscript(label: String) -> String? {
		get {
			matchLabels?[label]
		}
		set {
			if matchLabels == nil {
				matchLabels = [:]
			}
			matchLabels![label] = newValue
		}
	}
}
