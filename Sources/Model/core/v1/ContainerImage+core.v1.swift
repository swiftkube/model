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
/// core.v1.ContainerImage
///

import Foundation

public extension core.v1 {

	///
	/// Describe a container image
	///
	struct ContainerImage: KubernetesResource {
		///
		/// Names by which this image is known. e.g. ["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]
		///
		public var names: [String]?
		///
		/// The size of the image in bytes.
		///
		public var sizeBytes: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			names: [String]? = nil,
			sizeBytes: Int64? = nil
		) {
			self.names = names
			self.sizeBytes = sizeBytes
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ContainerImage {

	private enum CodingKeys: String, CodingKey {

		case names = "names"
		case sizeBytes = "sizeBytes"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.names = try container.decodeIfPresent([String].self, forKey: .names)
		self.sizeBytes = try container.decodeIfPresent(Int64.self, forKey: .sizeBytes)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(names, forKey: .names)
		try encodingContainer.encode(sizeBytes, forKey: .sizeBytes)
	}
}
