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
/// Kubernetes v1.32.0
/// core.v1.PodTemplateSpec
///

import Foundation

// MARK: - core.v1.PodTemplateSpec

public extension core.v1 {

	///
	/// PodTemplateSpec describes the data a pod should have when created from a template
	///
	struct PodTemplateSpec: MetadataHavingResource {
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
		///
		public var spec: core.v1.PodSpec?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: core.v1.PodSpec? = nil
		) {
			self.metadata = metadata
			self.spec = spec
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PodTemplateSpec {

	private enum CodingKeys: String, CodingKey {

		case metadata = "metadata"
		case spec = "spec"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decodeIfPresent(core.v1.PodSpec.self, forKey: .spec)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(spec, forKey: .spec)
	}
}
