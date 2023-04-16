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
/// Known GroupVersionResources.
///
public extension GroupVersionResource {

	static let coreV1Binding = GroupVersionResource(group: "core", version: "v1", resource: "bindings")
	static let coreV1ComponentStatus = GroupVersionResource(group: "core", version: "v1", resource: "componentstatuses")
	static let coreV1ConfigMap = GroupVersionResource(group: "core", version: "v1", resource: "configmaps")
	static let coreV1Endpoints = GroupVersionResource(group: "core", version: "v1", resource: "endpoints")
	static let coreV1Event = GroupVersionResource(group: "core", version: "v1", resource: "events")
	static let coreV1LimitRange = GroupVersionResource(group: "core", version: "v1", resource: "limitranges")
	static let coreV1Namespace = GroupVersionResource(group: "core", version: "v1", resource: "namespaces")
	static let coreV1Node = GroupVersionResource(group: "core", version: "v1", resource: "nodes")
	static let coreV1PersistentVolume = GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumes")
	static let coreV1PersistentVolumeClaim = GroupVersionResource(group: "core", version: "v1", resource: "persistentvolumeclaims")
	static let coreV1Pod = GroupVersionResource(group: "core", version: "v1", resource: "pods")
	static let coreV1PodTemplate = GroupVersionResource(group: "core", version: "v1", resource: "podtemplates")
	static let coreV1ReplicationController = GroupVersionResource(group: "core", version: "v1", resource: "replicationcontrollers")
	static let coreV1ResourceQuota = GroupVersionResource(group: "core", version: "v1", resource: "resourcequotas")
	static let coreV1Secret = GroupVersionResource(group: "core", version: "v1", resource: "secrets")
	static let coreV1Service = GroupVersionResource(group: "core", version: "v1", resource: "services")
	static let coreV1ServiceAccount = GroupVersionResource(group: "core", version: "v1", resource: "serviceaccounts")
	static let admissionregistrationV1MutatingWebhookConfiguration = GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "mutatingwebhookconfigurations")
	static let admissionregistrationV1ValidatingWebhookConfiguration = GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1", resource: "validatingwebhookconfigurations")
	static let admissionregistrationV1Alpha1ValidatingAdmissionPolicy = GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1alpha1", resource: "validatingadmissionpolicies")
	static let admissionregistrationV1Alpha1ValidatingAdmissionPolicyBinding = GroupVersionResource(group: "admissionregistration.k8s.io", version: "v1alpha1", resource: "validatingadmissionpolicybindings")
	static let apiextensionsV1CustomResourceDefinition = GroupVersionResource(group: "apiextensions.k8s.io", version: "v1", resource: "customresourcedefinitions")
	static let apiregistrationV1APIService = GroupVersionResource(group: "apiregistration.k8s.io", version: "v1", resource: "apiservices")
	static let appsV1ControllerRevision = GroupVersionResource(group: "apps", version: "v1", resource: "controllerrevisions")
	static let appsV1DaemonSet = GroupVersionResource(group: "apps", version: "v1", resource: "daemonsets")
	static let appsV1Deployment = GroupVersionResource(group: "apps", version: "v1", resource: "deployments")
	static let appsV1ReplicaSet = GroupVersionResource(group: "apps", version: "v1", resource: "replicasets")
	static let appsV1StatefulSet = GroupVersionResource(group: "apps", version: "v1", resource: "statefulsets")
	static let authenticationV1TokenRequest = GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "tokenrequests")
	static let authenticationV1TokenReview = GroupVersionResource(group: "authentication.k8s.io", version: "v1", resource: "tokenreviews")
	static let authenticationV1Alpha1SelfSubjectReview = GroupVersionResource(group: "authentication.k8s.io", version: "v1alpha1", resource: "selfsubjectreviews")
	static let authorizationV1LocalSubjectAccessReview = GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "localsubjectaccessreviews")
	static let authorizationV1SelfSubjectAccessReview = GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "selfsubjectaccessreviews")
	static let authorizationV1SelfSubjectRulesReview = GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "selfsubjectrulesreviews")
	static let authorizationV1SubjectAccessReview = GroupVersionResource(group: "authorization.k8s.io", version: "v1", resource: "subjectaccessreviews")
	static let autoscalingV1HorizontalPodAutoscaler = GroupVersionResource(group: "autoscaling", version: "v1", resource: "horizontalpodautoscalers")
	static let autoscalingV2HorizontalPodAutoscaler = GroupVersionResource(group: "autoscaling", version: "v2", resource: "horizontalpodautoscalers")
	static let batchV1CronJob = GroupVersionResource(group: "batch", version: "v1", resource: "cronjobs")
	static let batchV1Job = GroupVersionResource(group: "batch", version: "v1", resource: "jobs")
	static let certificatesV1CertificateSigningRequest = GroupVersionResource(group: "certificates.k8s.io", version: "v1", resource: "certificatesigningrequests")
	static let coordinationV1Lease = GroupVersionResource(group: "coordination.k8s.io", version: "v1", resource: "leases")
	static let discoveryV1EndpointSlice = GroupVersionResource(group: "discovery.k8s.io", version: "v1", resource: "endpointslices")
	static let eventsV1Event = GroupVersionResource(group: "events.k8s.io", version: "v1", resource: "events")
	static let flowcontrolV1Beta3FlowSchema = GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1beta3", resource: "flowschemas")
	static let flowcontrolV1Beta3PriorityLevelConfiguration = GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1beta3", resource: "prioritylevelconfigurations")
	static let flowcontrolV1Beta2FlowSchema = GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1beta2", resource: "flowschemas")
	static let flowcontrolV1Beta2PriorityLevelConfiguration = GroupVersionResource(group: "flowcontrol.apiserver.k8s.io", version: "v1beta2", resource: "prioritylevelconfigurations")
	static let internalV1Alpha1StorageVersion = GroupVersionResource(group: "internal.apiserver.k8s.io", version: "v1alpha1", resource: "storageversions")
	static let networkingV1Ingress = GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingresses")
	static let networkingV1IngressClass = GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "ingressclasses")
	static let networkingV1NetworkPolicy = GroupVersionResource(group: "networking.k8s.io", version: "v1", resource: "networkpolicies")
	static let networkingV1Alpha1ClusterCIDR = GroupVersionResource(group: "networking.k8s.io", version: "v1alpha1", resource: "clustercidrs")
	static let nodeV1RuntimeClass = GroupVersionResource(group: "node.k8s.io", version: "v1", resource: "runtimeclasses")
	static let policyV1PodDisruptionBudget = GroupVersionResource(group: "policy", version: "v1", resource: "poddisruptionbudgets")
	static let rbacV1ClusterRole = GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "clusterroles")
	static let rbacV1ClusterRoleBinding = GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "clusterrolebindings")
	static let rbacV1Role = GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "roles")
	static let rbacV1RoleBinding = GroupVersionResource(group: "rbac.authorization.k8s.io", version: "v1", resource: "rolebindings")
	static let resourceV1Alpha1PodScheduling = GroupVersionResource(group: "resource.k8s.io", version: "v1alpha1", resource: "podschedulings")
	static let resourceV1Alpha1ResourceClaim = GroupVersionResource(group: "resource.k8s.io", version: "v1alpha1", resource: "resourceclaims")
	static let resourceV1Alpha1ResourceClaimTemplate = GroupVersionResource(group: "resource.k8s.io", version: "v1alpha1", resource: "resourceclaimtemplates")
	static let resourceV1Alpha1ResourceClass = GroupVersionResource(group: "resource.k8s.io", version: "v1alpha1", resource: "resourceclasses")
	static let schedulingV1PriorityClass = GroupVersionResource(group: "scheduling.k8s.io", version: "v1", resource: "priorityclasses")
	static let storageV1CSIDriver = GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csidrivers")
	static let storageV1CSINode = GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csinodes")
	static let storageV1CSIStorageCapacity = GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "csistoragecapacities")
	static let storageV1StorageClass = GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "storageclasses")
	static let storageV1VolumeAttachment = GroupVersionResource(group: "storage.k8s.io", version: "v1", resource: "volumeattachments")
	static let storageV1Beta1CSIStorageCapacity = GroupVersionResource(group: "storage.k8s.io", version: "v1beta1", resource: "csistoragecapacities")
}
