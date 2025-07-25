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
/// Kubernetes v1.33.3
/// core.v1.ServiceAccount
///

import Foundation

// MARK: - core.v1.ServiceAccount

public extension core.v1 {

	///
	/// ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
	///
	struct ServiceAccount: KubernetesAPIResource, MetadataHavingResource, NamespacedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = core.v1.ServiceAccountList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ServiceAccount"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
		///
		public var automountServiceAccountToken: Bool?
		///
		/// ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod
		///
		public var imagePullSecrets: [core.v1.LocalObjectReference]?
		///
		/// Secrets is a list of the secrets in the same namespace that pods running using this ServiceAccount are allowed to use. Pods are only limited to this list if this service account has a "kubernetes.io/enforce-mountable-secrets" annotation set to "true". The "kubernetes.io/enforce-mountable-secrets" annotation is deprecated since v1.32. Prefer separate namespaces to isolate access to mounted secrets. This field should not be used to find auto-generated service account token secrets for use outside of pods. Instead, tokens can be requested directly using the TokenRequest API, or service account token secrets can be manually created. More info: https://kubernetes.io/docs/concepts/configuration/secret
		///
		public var secrets: [core.v1.ObjectReference]?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			automountServiceAccountToken: Bool? = nil,
			imagePullSecrets: [core.v1.LocalObjectReference]? = nil,
			secrets: [core.v1.ObjectReference]? = nil
		) {
			self.metadata = metadata
			self.automountServiceAccountToken = automountServiceAccountToken
			self.imagePullSecrets = imagePullSecrets
			self.secrets = secrets
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ServiceAccount {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case automountServiceAccountToken = "automountServiceAccountToken"
		case imagePullSecrets = "imagePullSecrets"
		case secrets = "secrets"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.automountServiceAccountToken = try container.decodeIfPresent(Bool.self, forKey: .automountServiceAccountToken)
		self.imagePullSecrets = try container.decodeIfPresent([core.v1.LocalObjectReference].self, forKey: .imagePullSecrets)
		self.secrets = try container.decodeIfPresent([core.v1.ObjectReference].self, forKey: .secrets)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(automountServiceAccountToken, forKey: .automountServiceAccountToken)
		try encodingContainer.encode(imagePullSecrets, forKey: .imagePullSecrets)
		try encodingContainer.encode(secrets, forKey: .secrets)
	}
}
