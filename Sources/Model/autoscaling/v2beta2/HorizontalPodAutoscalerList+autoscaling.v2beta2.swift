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
/// autoscaling.v2beta2.HorizontalPodAutoscalerList
///

import Foundation

public extension autoscaling.v2beta2 {

	///
	/// HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
	///
	struct HorizontalPodAutoscalerList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = autoscaling.v2beta2.HorizontalPodAutoscaler
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "autoscaling/v2beta2"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "HorizontalPodAutoscalerList"
		///
		/// metadata is the standard list metadata.
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// items is the list of horizontal pod autoscaler objects.
		///
		public var items: [autoscaling.v2beta2.HorizontalPodAutoscaler]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [autoscaling.v2beta2.HorizontalPodAutoscaler]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2beta2.HorizontalPodAutoscalerList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([autoscaling.v2beta2.HorizontalPodAutoscaler].self, forKey: .items)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(apiVersion, forKey: .apiVersion)
		try container.encode(kind, forKey: .kind)
		try container.encode(metadata, forKey: .metadata)
		try container.encode(items, forKey: .items)
	}
}

// MARK: - autoscaling.v2beta2.HorizontalPodAutoscalerList + Sequence

///
/// Sequence iterator for KubernetesResourceList items
///
extension autoscaling.v2beta2.HorizontalPodAutoscalerList: Sequence {

	public typealias Element = autoscaling.v2beta2.HorizontalPodAutoscaler

	public func makeIterator() -> AnyIterator<autoscaling.v2beta2.HorizontalPodAutoscaler> {
		AnyIterator(items.makeIterator())
	}
}
