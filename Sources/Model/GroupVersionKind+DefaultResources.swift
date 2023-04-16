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
/// Kubernetes v1.26.4
///

import Foundation

///
/// Known GroupVersionKinds.
///
public extension GroupVersionKind {

	static let coreV1Binding = GroupVersionKind(group: "core", version: "v1", kind: "Binding")
	static let coreV1ComponentStatus = GroupVersionKind(group: "core", version: "v1", kind: "ComponentStatus")
	static let coreV1ConfigMap = GroupVersionKind(group: "core", version: "v1", kind: "ConfigMap")
	static let coreV1Endpoints = GroupVersionKind(group: "core", version: "v1", kind: "Endpoints")
	static let coreV1Event = GroupVersionKind(group: "core", version: "v1", kind: "Event")
	static let coreV1LimitRange = GroupVersionKind(group: "core", version: "v1", kind: "LimitRange")
	static let coreV1Namespace = GroupVersionKind(group: "core", version: "v1", kind: "Namespace")
	static let coreV1Node = GroupVersionKind(group: "core", version: "v1", kind: "Node")
	static let coreV1PersistentVolume = GroupVersionKind(group: "core", version: "v1", kind: "PersistentVolume")
	static let coreV1PersistentVolumeClaim = GroupVersionKind(group: "core", version: "v1", kind: "PersistentVolumeClaim")
	static let coreV1Pod = GroupVersionKind(group: "core", version: "v1", kind: "Pod")
	static let coreV1PodTemplate = GroupVersionKind(group: "core", version: "v1", kind: "PodTemplate")
	static let coreV1ReplicationController = GroupVersionKind(group: "core", version: "v1", kind: "ReplicationController")
	static let coreV1ResourceQuota = GroupVersionKind(group: "core", version: "v1", kind: "ResourceQuota")
	static let coreV1Secret = GroupVersionKind(group: "core", version: "v1", kind: "Secret")
	static let coreV1Service = GroupVersionKind(group: "core", version: "v1", kind: "Service")
	static let coreV1ServiceAccount = GroupVersionKind(group: "core", version: "v1", kind: "ServiceAccount")
	static let admissionregistrationV1MutatingWebhookConfiguration = GroupVersionKind(group: "admissionregistration.k8s.io", version: "v1", kind: "MutatingWebhookConfiguration")
	static let admissionregistrationV1ValidatingWebhookConfiguration = GroupVersionKind(group: "admissionregistration.k8s.io", version: "v1", kind: "ValidatingWebhookConfiguration")
	static let admissionregistrationV1Alpha1ValidatingAdmissionPolicy = GroupVersionKind(group: "admissionregistration.k8s.io", version: "v1alpha1", kind: "ValidatingAdmissionPolicy")
	static let admissionregistrationV1Alpha1ValidatingAdmissionPolicyBinding = GroupVersionKind(group: "admissionregistration.k8s.io", version: "v1alpha1", kind: "ValidatingAdmissionPolicyBinding")
	static let apiextensionsV1CustomResourceDefinition = GroupVersionKind(group: "apiextensions.k8s.io", version: "v1", kind: "CustomResourceDefinition")
	static let apiregistrationV1APIService = GroupVersionKind(group: "apiregistration.k8s.io", version: "v1", kind: "APIService")
	static let appsV1ControllerRevision = GroupVersionKind(group: "apps", version: "v1", kind: "ControllerRevision")
	static let appsV1DaemonSet = GroupVersionKind(group: "apps", version: "v1", kind: "DaemonSet")
	static let appsV1Deployment = GroupVersionKind(group: "apps", version: "v1", kind: "Deployment")
	static let appsV1ReplicaSet = GroupVersionKind(group: "apps", version: "v1", kind: "ReplicaSet")
	static let appsV1StatefulSet = GroupVersionKind(group: "apps", version: "v1", kind: "StatefulSet")
	static let authenticationV1TokenRequest = GroupVersionKind(group: "authentication.k8s.io", version: "v1", kind: "TokenRequest")
	static let authenticationV1TokenReview = GroupVersionKind(group: "authentication.k8s.io", version: "v1", kind: "TokenReview")
	static let authenticationV1Alpha1SelfSubjectReview = GroupVersionKind(group: "authentication.k8s.io", version: "v1alpha1", kind: "SelfSubjectReview")
	static let authorizationV1LocalSubjectAccessReview = GroupVersionKind(group: "authorization.k8s.io", version: "v1", kind: "LocalSubjectAccessReview")
	static let authorizationV1SelfSubjectAccessReview = GroupVersionKind(group: "authorization.k8s.io", version: "v1", kind: "SelfSubjectAccessReview")
	static let authorizationV1SelfSubjectRulesReview = GroupVersionKind(group: "authorization.k8s.io", version: "v1", kind: "SelfSubjectRulesReview")
	static let authorizationV1SubjectAccessReview = GroupVersionKind(group: "authorization.k8s.io", version: "v1", kind: "SubjectAccessReview")
	static let autoscalingV1HorizontalPodAutoscaler = GroupVersionKind(group: "autoscaling", version: "v1", kind: "HorizontalPodAutoscaler")
	static let autoscalingV2HorizontalPodAutoscaler = GroupVersionKind(group: "autoscaling", version: "v2", kind: "HorizontalPodAutoscaler")
	static let batchV1CronJob = GroupVersionKind(group: "batch", version: "v1", kind: "CronJob")
	static let batchV1Job = GroupVersionKind(group: "batch", version: "v1", kind: "Job")
	static let certificatesV1CertificateSigningRequest = GroupVersionKind(group: "certificates.k8s.io", version: "v1", kind: "CertificateSigningRequest")
	static let coordinationV1Lease = GroupVersionKind(group: "coordination.k8s.io", version: "v1", kind: "Lease")
	static let discoveryV1EndpointSlice = GroupVersionKind(group: "discovery.k8s.io", version: "v1", kind: "EndpointSlice")
	static let eventsV1Event = GroupVersionKind(group: "events.k8s.io", version: "v1", kind: "Event")
	static let flowcontrolV1Beta3FlowSchema = GroupVersionKind(group: "flowcontrol.apiserver.k8s.io", version: "v1beta3", kind: "FlowSchema")
	static let flowcontrolV1Beta3PriorityLevelConfiguration = GroupVersionKind(group: "flowcontrol.apiserver.k8s.io", version: "v1beta3", kind: "PriorityLevelConfiguration")
	static let flowcontrolV1Beta2FlowSchema = GroupVersionKind(group: "flowcontrol.apiserver.k8s.io", version: "v1beta2", kind: "FlowSchema")
	static let flowcontrolV1Beta2PriorityLevelConfiguration = GroupVersionKind(group: "flowcontrol.apiserver.k8s.io", version: "v1beta2", kind: "PriorityLevelConfiguration")
	static let internalV1Alpha1StorageVersion = GroupVersionKind(group: "internal.apiserver.k8s.io", version: "v1alpha1", kind: "StorageVersion")
	static let networkingV1Ingress = GroupVersionKind(group: "networking.k8s.io", version: "v1", kind: "Ingress")
	static let networkingV1IngressClass = GroupVersionKind(group: "networking.k8s.io", version: "v1", kind: "IngressClass")
	static let networkingV1NetworkPolicy = GroupVersionKind(group: "networking.k8s.io", version: "v1", kind: "NetworkPolicy")
	static let networkingV1Alpha1ClusterCIDR = GroupVersionKind(group: "networking.k8s.io", version: "v1alpha1", kind: "ClusterCIDR")
	static let nodeV1RuntimeClass = GroupVersionKind(group: "node.k8s.io", version: "v1", kind: "RuntimeClass")
	static let policyV1PodDisruptionBudget = GroupVersionKind(group: "policy", version: "v1", kind: "PodDisruptionBudget")
	static let rbacV1ClusterRole = GroupVersionKind(group: "rbac.authorization.k8s.io", version: "v1", kind: "ClusterRole")
	static let rbacV1ClusterRoleBinding = GroupVersionKind(group: "rbac.authorization.k8s.io", version: "v1", kind: "ClusterRoleBinding")
	static let rbacV1Role = GroupVersionKind(group: "rbac.authorization.k8s.io", version: "v1", kind: "Role")
	static let rbacV1RoleBinding = GroupVersionKind(group: "rbac.authorization.k8s.io", version: "v1", kind: "RoleBinding")
	static let resourceV1Alpha1PodScheduling = GroupVersionKind(group: "resource.k8s.io", version: "v1alpha1", kind: "PodScheduling")
	static let resourceV1Alpha1ResourceClaim = GroupVersionKind(group: "resource.k8s.io", version: "v1alpha1", kind: "ResourceClaim")
	static let resourceV1Alpha1ResourceClaimTemplate = GroupVersionKind(group: "resource.k8s.io", version: "v1alpha1", kind: "ResourceClaimTemplate")
	static let resourceV1Alpha1ResourceClass = GroupVersionKind(group: "resource.k8s.io", version: "v1alpha1", kind: "ResourceClass")
	static let schedulingV1PriorityClass = GroupVersionKind(group: "scheduling.k8s.io", version: "v1", kind: "PriorityClass")
	static let storageV1CSIDriver = GroupVersionKind(group: "storage.k8s.io", version: "v1", kind: "CSIDriver")
	static let storageV1CSINode = GroupVersionKind(group: "storage.k8s.io", version: "v1", kind: "CSINode")
	static let storageV1CSIStorageCapacity = GroupVersionKind(group: "storage.k8s.io", version: "v1", kind: "CSIStorageCapacity")
	static let storageV1StorageClass = GroupVersionKind(group: "storage.k8s.io", version: "v1", kind: "StorageClass")
	static let storageV1VolumeAttachment = GroupVersionKind(group: "storage.k8s.io", version: "v1", kind: "VolumeAttachment")
	static let storageV1Beta1CSIStorageCapacity = GroupVersionKind(group: "storage.k8s.io", version: "v1beta1", kind: "CSIStorageCapacity")
}
