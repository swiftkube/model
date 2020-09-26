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

public extension extensions.v1beta1 {

	///
	/// IDRange provides a min/max of an allowed range of IDs. Deprecated: use IDRange from policy API Group instead.
	///
	struct IDRange: KubernetesResource {
		///
		/// max is the end of the range, inclusive.
		///
		public var max: Int64
		///
		/// min is the start of the range, inclusive.
		///
		public var min: Int64
		///
		/// Default memberwise initializer
		///
		public init(
			max: Int64,
			min: Int64
		) {
			self.max = max
			self.min = min
		}
	}
}

///
/// Codable conformance
///
extension extensions.v1beta1.IDRange {

	private enum CodingKeys: String, CodingKey {
		case max = "max"
		case min = "min"
	}

}

