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

// MARK: - KubernetesResource

///
/// A marker protocol for all Kubernetes resources.
///
public protocol KubernetesResource: Codable {}

// MARK: - KubernetesResourceList

///
/// A type that represents a list of Kubernetes resources, e.g. `DeploymentList`.
///
public protocol KubernetesResourceList: Codable {
	/// The associated `KubernetesResource` item type, e.g. `Deployment`
	associatedtype Item: KubernetesResource

	/// `APIVersion` defines the versioned schema of this representation of an object.
	var apiVersion: String { get }
	/// `Kind` is a string value representing the REST resource this object represents.
	var kind: String { get }
	/// An array of `KubernetesResource` items.
	var items: [Item] { get }
}

// MARK: - MetadataHavingResource

///
/// A type of `KubernetesResource` that holds metadata: `meta.v1.ObjectMeta`.
///
public protocol MetadataHavingResource: KubernetesResource {
	/// The `meta.v1.ObjectMeta` object.
	var metadata: meta.v1.ObjectMeta? { get }
	/// The resource's name, i.e. `metadata.name`.
	var name: String? { get }
}

public extension MetadataHavingResource {

	var metadata: meta.v1.ObjectMeta? {
		nil
	}

	var name: String? {
		metadata?.name
	}
}

// MARK: - KubernetesAPIResource

///
/// A type of `KubernetesResource` that has a corresponding API endpoint, i.e. an API group under a specific version.
///
public protocol KubernetesAPIResource: MetadataHavingResource {
	/// `APIVersion` defines the versioned schema of this representation of an object.
	var apiVersion: String { get }
	/// `Kind` is a string value representing the REST resource this object represents.
	var kind: String { get }
}

// MARK: - NamespacedResource

///
/// A marker protocol for all namespace-scoped API resources.
///
/// For example a `Pod` or an `Ingress` are `NamespacedResource`s.
public protocol NamespacedResource: KubernetesResource {}

// MARK: - ClusterScopedResource

///
/// A marker protocol for all cluster-scoped API resources.
///
/// For example a `Node` or a `ClusterRole` are `ClusterScopedResource`s.
public protocol ClusterScopedResource: KubernetesResource {}

// MARK: - ReadableResource

///
/// A type of `KubernetesResource`s that are "readable", i.e. can be fetched or watched.
///
/// For example a `Pod` is readable, whereas a `SelfSubjectAccessReview` is not.
public protocol ReadableResource: KubernetesResource {}

// MARK: - ListableResource

///
/// A type of `KubernetesResource`s that are  "listable".
///
/// `Listable` resources have a corresponding `KubernetesResourceList`, e.g. a `Pod` and `PodList`,
/// and support "listing", e.g. `GET /api/v1/pods`
public protocol ListableResource: KubernetesResource {
	/// The associated type of a `KubernetesResourceList`.
	associatedtype List: KubernetesResourceList
}

// MARK: - CreatableResource

///
/// A type of `KubernetesResource`s that can be created.
///
public protocol CreatableResource: KubernetesResource {}

// MARK: - ReplaceableResource

///
/// A type of `KubernetesResource`s that can be replaced via a `PUT` request.
///
/// For example a `Pod` is updatable, whereas a `LocalSubjectAccessReview` is not.
public protocol ReplaceableResource: KubernetesResource {}

// MARK: - DeletableResource

///
/// A type of `KubernetesResource`s that can be deleted.
///
/// For example a `Pod` is deletable, whereas a `LocalSubjectAccessReview` is not.
public protocol DeletableResource: KubernetesResource {}

// MARK: - CollectionDeletableResource

///
/// A type of `KubernetesResource`s that support deleting in batch.
///
/// For example a `Pod` collection is deletable, e.g.
/// ```
/// DELETE /api/v1/namespaces/{namespace}/pods
/// ```
///  is supported.
///
///  However, `Service`s are not deletable in batch, e.g.
///  ```
///  DELETE /api/v1/namespace/{namespace}/services
///  ```
///  is not supported.
public protocol CollectionDeletableResource: KubernetesResource {}

// MARK: - EvictableResource

///
/// A type of `KubernetesResource`s that can be evicted by creatign an eviction object.
///
public protocol EvictableResource: KubernetesResource {}

// MARK: - ScalableResource

///
/// A type of `KubernetesResource`s that can be scaled.
///
/// For example a `Deployment` can be scaled up and down, e.g.
/// ```
/// PUT /apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale
/// ```
public protocol ScalableResource: KubernetesResource {}

// MARK: - StatusHavingResource

///
/// A type of `KubernetesResource`s that holds a ``.
///
/// For example a `Deployment` can be scaled up and down, e.g.
/// ```
/// PUT /apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale
/// ```
public protocol StatusHavingResource: KubernetesResource {}
