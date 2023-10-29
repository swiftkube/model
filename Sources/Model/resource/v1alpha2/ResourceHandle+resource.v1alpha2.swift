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
/// Kubernetes v1.28.3
/// resource.v1alpha2.ResourceHandle
///

import Foundation

// MARK: - resource.v1alpha2.ResourceHandle

public extension resource.v1alpha2 {

	///
	/// ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
	///
	struct ResourceHandle: KubernetesResource {
		///
		/// Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.
		///
		/// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
		///
		public var data: String?
		///
		/// DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
		///
		public var driverName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			data: String? = nil,
			driverName: String? = nil
		) {
			self.data = data
			self.driverName = driverName
		}
	}
}

///
/// Codable conformance
///
public extension resource.v1alpha2.ResourceHandle {

	private enum CodingKeys: String, CodingKey {

		case data = "data"
		case driverName = "driverName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.data = try container.decodeIfPresent(String.self, forKey: .data)
		self.driverName = try container.decodeIfPresent(String.self, forKey: .driverName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(data, forKey: .data)
		try encodingContainer.encode(driverName, forKey: .driverName)
	}
}
