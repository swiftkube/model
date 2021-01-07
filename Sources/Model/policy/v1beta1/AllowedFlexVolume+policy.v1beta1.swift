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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// policy.v1beta1.AllowedFlexVolume
///

import Foundation

public extension policy.v1beta1 {

	///
	/// AllowedFlexVolume represents a single Flexvolume that is allowed to be used.
	///
	struct AllowedFlexVolume: KubernetesResource {
		///
		/// driver is the name of the Flexvolume driver.
		///
		public var driver: String
		///
		/// Default memberwise initializer
		///
		public init(
			driver: String
		) {
			self.driver = driver
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1beta1.AllowedFlexVolume {

	private enum CodingKeys: String, CodingKey {

		case driver = "driver"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.driver = try container.decode(String.self, forKey: .driver)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(driver, forKey: .driver)
	}
}
