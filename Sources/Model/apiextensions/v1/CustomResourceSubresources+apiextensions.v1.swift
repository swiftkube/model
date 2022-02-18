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
/// Kubernetes v1.22.7
/// apiextensions.v1.CustomResourceSubresources
///

import Foundation

public extension apiextensions.v1 {

	///
	/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
	///
	struct CustomResourceSubresources: KubernetesResource {
		///
		/// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
		///
		public var scale: apiextensions.v1.CustomResourceSubresourceScale?
		///
		/// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
		///
		public var status: apiextensions.v1.CustomResourceSubresourceStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			scale: apiextensions.v1.CustomResourceSubresourceScale? = nil,
			status: apiextensions.v1.CustomResourceSubresourceStatus? = nil
		) {
			self.scale = scale
			self.status = status
		}
	}
}

///
/// Codable conformance
///
public extension apiextensions.v1.CustomResourceSubresources {

	private enum CodingKeys: String, CodingKey {

		case scale = "scale"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.scale = try container.decodeIfPresent(apiextensions.v1.CustomResourceSubresourceScale.self, forKey: .scale)
		self.status = try container.decodeIfPresent(apiextensions.v1.CustomResourceSubresourceStatus.self, forKey: .status)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(scale, forKey: .scale)
		try encodingContainer.encode(status, forKey: .status)
	}
}
