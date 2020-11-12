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

///
/// A marker protocol for all Kubernetes resources.
///
public protocol KubernetesResource: Codable {}

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

///
/// A type of `KubernetesResource` that holds metadata: `meta.v1.ObjectMeta`.
///
public protocol MetadataHavingResource: KubernetesResource {
	/// The `meta.v1.ObjectMeta` object.
	var metadata: meta.v1.ObjectMeta? { get }
	/// The resurce's name, i.e. `metadata.name`.
	var name: String? { get }
}

extension MetadataHavingResource {

	public var metadata: meta.v1.ObjectMeta? {
		return nil
	}

	public var name: String? {
		return self.metadata?.name
	}
}

///
/// A type of `KubernetesResource` that has a corresponding API endpoint, i.e. an API group under a specific version.
///
public protocol KubernetesAPIResource : MetadataHavingResource {
	/// `APIVersion` defines the versioned schema of this representation of an object.
	var apiVersion: String { get }
	/// `Kind` is a string value representing the REST resource this object represents.
	var kind: String { get }
}

/// A type of `KubernetesResource` that is `listable`.
///
/// `Listable` resources have a corresponding `KubernetesResourceList`, e.g. a `Pod` and `PodList`,
/// and support "listing", e.g. `GET /api/v1/pods`
public protocol ListableResource: KubernetesResource {
	/// The associated type of a `KubernetesResourceList`.
	associatedtype List: KubernetesResourceList
}

///
/// A marker protocol for all namespace-scoped API resources.
///
/// For example a `Pod` or an `Ingress` are `NamespacedResource`s.
public protocol NamespacedResource {}

///
/// A marker protocol for all cluster-scoped API resources.
///
/// For example a `Node` or a `ClusterRole` are ClusterScopedResource`s.
public protocol ClusterScopedResource {}
