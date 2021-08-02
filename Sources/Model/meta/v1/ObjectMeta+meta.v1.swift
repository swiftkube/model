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
/// Kubernetes v1.20.9
/// meta.v1.ObjectMeta
///

import Foundation

public extension meta.v1 {

	///
	/// ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
	///
	struct ObjectMeta: KubernetesResource {
		///
		/// Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
		///
		public var annotations: [String: String]?
		///
		/// The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
		///
		public var clusterName: String?
		///
		/// CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
		///
		/// Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var creationTimestamp: Date?
		///
		/// Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
		///
		public var deletionGracePeriodSeconds: Int64?
		///
		/// DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
		///
		/// Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var deletionTimestamp: Date?
		///
		/// Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
		///
		public var finalizers: [String]?
		///
		/// GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
		///
		/// If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
		///
		/// Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
		///
		public var generateName: String?
		///
		/// A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
		///
		public var generation: Int64?
		///
		/// Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
		///
		public var labels: [String: String]?
		///
		/// ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
		///
		public var managedFields: [meta.v1.ManagedFieldsEntry]?
		///
		/// Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
		///
		public var name: String?
		///
		/// Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
		///
		/// Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
		///
		public var namespace: String?
		///
		/// List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
		///
		public var ownerReferences: [meta.v1.OwnerReference]?
		///
		/// An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
		///
		/// Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
		///
		public var resourceVersion: String?
		///
		/// SelfLink is a URL representing this object. Populated by the system. Read-only.
		///
		/// DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
		///
		public var selfLink: String?
		///
		/// UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
		///
		/// Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
		///
		public var uid: String?
		///
		/// Default memberwise initializer
		///
		public init(
			annotations: [String: String]? = nil,
			clusterName: String? = nil,
			creationTimestamp: Date? = nil,
			deletionGracePeriodSeconds: Int64? = nil,
			deletionTimestamp: Date? = nil,
			finalizers: [String]? = nil,
			generateName: String? = nil,
			generation: Int64? = nil,
			labels: [String: String]? = nil,
			managedFields: [meta.v1.ManagedFieldsEntry]? = nil,
			name: String? = nil,
			namespace: String? = nil,
			ownerReferences: [meta.v1.OwnerReference]? = nil,
			resourceVersion: String? = nil,
			selfLink: String? = nil,
			uid: String? = nil
		) {
			self.annotations = annotations
			self.clusterName = clusterName
			self.creationTimestamp = creationTimestamp
			self.deletionGracePeriodSeconds = deletionGracePeriodSeconds
			self.deletionTimestamp = deletionTimestamp
			self.finalizers = finalizers
			self.generateName = generateName
			self.generation = generation
			self.labels = labels
			self.managedFields = managedFields
			self.name = name
			self.namespace = namespace
			self.ownerReferences = ownerReferences
			self.resourceVersion = resourceVersion
			self.selfLink = selfLink
			self.uid = uid
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.ObjectMeta {

	private enum CodingKeys: String, CodingKey {

		case annotations = "annotations"
		case clusterName = "clusterName"
		case creationTimestamp = "creationTimestamp"
		case deletionGracePeriodSeconds = "deletionGracePeriodSeconds"
		case deletionTimestamp = "deletionTimestamp"
		case finalizers = "finalizers"
		case generateName = "generateName"
		case generation = "generation"
		case labels = "labels"
		case managedFields = "managedFields"
		case name = "name"
		case namespace = "namespace"
		case ownerReferences = "ownerReferences"
		case resourceVersion = "resourceVersion"
		case selfLink = "selfLink"
		case uid = "uid"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.annotations = try container.decodeIfPresent([String: String].self, forKey: .annotations)
		self.clusterName = try container.decodeIfPresent(String.self, forKey: .clusterName)
		self.creationTimestamp = try container.decodeIfPresent(Date.self, forKey: .creationTimestamp)
		self.deletionGracePeriodSeconds = try container.decodeIfPresent(Int64.self, forKey: .deletionGracePeriodSeconds)
		self.deletionTimestamp = try container.decodeIfPresent(Date.self, forKey: .deletionTimestamp)
		self.finalizers = try container.decodeIfPresent([String].self, forKey: .finalizers)
		self.generateName = try container.decodeIfPresent(String.self, forKey: .generateName)
		self.generation = try container.decodeIfPresent(Int64.self, forKey: .generation)
		self.labels = try container.decodeIfPresent([String: String].self, forKey: .labels)
		self.managedFields = try container.decodeIfPresent([meta.v1.ManagedFieldsEntry].self, forKey: .managedFields)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
		self.ownerReferences = try container.decodeIfPresent([meta.v1.OwnerReference].self, forKey: .ownerReferences)
		self.resourceVersion = try container.decodeIfPresent(String.self, forKey: .resourceVersion)
		self.selfLink = try container.decodeIfPresent(String.self, forKey: .selfLink)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(annotations, forKey: .annotations)
		try encodingContainer.encode(clusterName, forKey: .clusterName)
		try encodingContainer.encode(creationTimestamp, forKey: .creationTimestamp)
		try encodingContainer.encode(deletionGracePeriodSeconds, forKey: .deletionGracePeriodSeconds)
		try encodingContainer.encode(deletionTimestamp, forKey: .deletionTimestamp)
		try encodingContainer.encode(finalizers, forKey: .finalizers)
		try encodingContainer.encode(generateName, forKey: .generateName)
		try encodingContainer.encode(generation, forKey: .generation)
		try encodingContainer.encode(labels, forKey: .labels)
		try encodingContainer.encode(managedFields, forKey: .managedFields)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
		try encodingContainer.encode(ownerReferences, forKey: .ownerReferences)
		try encodingContainer.encode(resourceVersion, forKey: .resourceVersion)
		try encodingContainer.encode(selfLink, forKey: .selfLink)
		try encodingContainer.encode(uid, forKey: .uid)
	}
}
