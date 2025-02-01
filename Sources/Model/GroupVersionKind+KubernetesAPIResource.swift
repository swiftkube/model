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
///

import Foundation

public extension GroupVersionKind {

	/// Creates a new instance of `GroupVersionKind` for the given `KubernetesAPIResource`.
	///
	/// - Parameter resource: An instance of a `KubernetesAPIResource`
	init?<R: KubernetesAPIResource>(of resource: R) {
		if let gvk = GroupVersionKind(of: "\(resource.apiVersion)/\(resource.kind)") {
			self = gvk
		} else {
			return nil
		}
	}

	/// Creates a new instance of `GroupVersionKind` for the given `KubernetesAPIResource` type.
	///
	/// - Parameter type: A type of a `KubernetesAPIResource`, e.g. `core.v1.Pod.self`.
	init?<R: KubernetesAPIResource>(of type: R.Type) {
		switch type {

		case is core.v1.Binding.Type:
			self = .coreV1Binding
		case is core.v1.ComponentStatus.Type:
			self = .coreV1ComponentStatus
		case is core.v1.ConfigMap.Type:
			self = .coreV1ConfigMap
		case is core.v1.Endpoints.Type:
			self = .coreV1Endpoints
		case is core.v1.Event.Type:
			self = .coreV1Event
		case is core.v1.LimitRange.Type:
			self = .coreV1LimitRange
		case is core.v1.Namespace.Type:
			self = .coreV1Namespace
		case is core.v1.Node.Type:
			self = .coreV1Node
		case is core.v1.PersistentVolume.Type:
			self = .coreV1PersistentVolume
		case is core.v1.PersistentVolumeClaim.Type:
			self = .coreV1PersistentVolumeClaim
		case is core.v1.Pod.Type:
			self = .coreV1Pod
		case is core.v1.PodTemplate.Type:
			self = .coreV1PodTemplate
		case is core.v1.ReplicationController.Type:
			self = .coreV1ReplicationController
		case is core.v1.ResourceQuota.Type:
			self = .coreV1ResourceQuota
		case is core.v1.Secret.Type:
			self = .coreV1Secret
		case is core.v1.Service.Type:
			self = .coreV1Service
		case is core.v1.ServiceAccount.Type:
			self = .coreV1ServiceAccount
		case is admissionregistration.v1.MutatingWebhookConfiguration.Type:
			self = .admissionregistrationV1MutatingWebhookConfiguration
		case is admissionregistration.v1.ValidatingAdmissionPolicy.Type:
			self = .admissionregistrationV1ValidatingAdmissionPolicy
		case is admissionregistration.v1.ValidatingAdmissionPolicyBinding.Type:
			self = .admissionregistrationV1ValidatingAdmissionPolicyBinding
		case is admissionregistration.v1.ValidatingWebhookConfiguration.Type:
			self = .admissionregistrationV1ValidatingWebhookConfiguration
		case is admissionregistration.v1beta1.ValidatingAdmissionPolicy.Type:
			self = .admissionregistrationV1Beta1ValidatingAdmissionPolicy
		case is admissionregistration.v1beta1.ValidatingAdmissionPolicyBinding.Type:
			self = .admissionregistrationV1Beta1ValidatingAdmissionPolicyBinding
		case is admissionregistration.v1alpha1.MutatingAdmissionPolicy.Type:
			self = .admissionregistrationV1Alpha1MutatingAdmissionPolicy
		case is admissionregistration.v1alpha1.MutatingAdmissionPolicyBinding.Type:
			self = .admissionregistrationV1Alpha1MutatingAdmissionPolicyBinding
		case is apiextensions.v1.CustomResourceDefinition.Type:
			self = .apiextensionsV1CustomResourceDefinition
		case is apiregistration.v1.APIService.Type:
			self = .apiregistrationV1APIService
		case is apps.v1.ControllerRevision.Type:
			self = .appsV1ControllerRevision
		case is apps.v1.DaemonSet.Type:
			self = .appsV1DaemonSet
		case is apps.v1.Deployment.Type:
			self = .appsV1Deployment
		case is apps.v1.ReplicaSet.Type:
			self = .appsV1ReplicaSet
		case is apps.v1.StatefulSet.Type:
			self = .appsV1StatefulSet
		case is authentication.v1.SelfSubjectReview.Type:
			self = .authenticationV1SelfSubjectReview
		case is authentication.v1.TokenRequest.Type:
			self = .authenticationV1TokenRequest
		case is authentication.v1.TokenReview.Type:
			self = .authenticationV1TokenReview
		case is authentication.v1beta1.SelfSubjectReview.Type:
			self = .authenticationV1Beta1SelfSubjectReview
		case is authorization.v1.LocalSubjectAccessReview.Type:
			self = .authorizationV1LocalSubjectAccessReview
		case is authorization.v1.SelfSubjectAccessReview.Type:
			self = .authorizationV1SelfSubjectAccessReview
		case is authorization.v1.SelfSubjectRulesReview.Type:
			self = .authorizationV1SelfSubjectRulesReview
		case is authorization.v1.SubjectAccessReview.Type:
			self = .authorizationV1SubjectAccessReview
		case is autoscaling.v1.HorizontalPodAutoscaler.Type:
			self = .autoscalingV1HorizontalPodAutoscaler
		case is autoscaling.v2.HorizontalPodAutoscaler.Type:
			self = .autoscalingV2HorizontalPodAutoscaler
		case is batch.v1.CronJob.Type:
			self = .batchV1CronJob
		case is batch.v1.Job.Type:
			self = .batchV1Job
		case is certificates.v1.CertificateSigningRequest.Type:
			self = .certificatesV1CertificateSigningRequest
		case is certificates.v1alpha1.ClusterTrustBundle.Type:
			self = .certificatesV1Alpha1ClusterTrustBundle
		case is coordination.v1.Lease.Type:
			self = .coordinationV1Lease
		case is coordination.v1alpha2.LeaseCandidate.Type:
			self = .coordinationV1Alpha2LeaseCandidate
		case is discovery.v1.EndpointSlice.Type:
			self = .discoveryV1EndpointSlice
		case is events.v1.Event.Type:
			self = .eventsV1Event
		case is flowcontrol.v1.FlowSchema.Type:
			self = .flowcontrolV1FlowSchema
		case is flowcontrol.v1.PriorityLevelConfiguration.Type:
			self = .flowcontrolV1PriorityLevelConfiguration
		case is `internal`.v1alpha1.StorageVersion.Type:
			self = .internalV1Alpha1StorageVersion
		case is networking.v1.Ingress.Type:
			self = .networkingV1Ingress
		case is networking.v1.IngressClass.Type:
			self = .networkingV1IngressClass
		case is networking.v1.NetworkPolicy.Type:
			self = .networkingV1NetworkPolicy
		case is networking.v1beta1.IPAddress.Type:
			self = .networkingV1Beta1IPAddress
		case is networking.v1beta1.ServiceCIDR.Type:
			self = .networkingV1Beta1ServiceCIDR
		case is node.v1.RuntimeClass.Type:
			self = .nodeV1RuntimeClass
		case is policy.v1.PodDisruptionBudget.Type:
			self = .policyV1PodDisruptionBudget
		case is rbac.v1.ClusterRole.Type:
			self = .rbacV1ClusterRole
		case is rbac.v1.ClusterRoleBinding.Type:
			self = .rbacV1ClusterRoleBinding
		case is rbac.v1.Role.Type:
			self = .rbacV1Role
		case is rbac.v1.RoleBinding.Type:
			self = .rbacV1RoleBinding
		case is resource.v1beta1.DeviceClass.Type:
			self = .resourceV1Beta1DeviceClass
		case is resource.v1beta1.ResourceClaim.Type:
			self = .resourceV1Beta1ResourceClaim
		case is resource.v1beta1.ResourceClaimTemplate.Type:
			self = .resourceV1Beta1ResourceClaimTemplate
		case is resource.v1beta1.ResourceSlice.Type:
			self = .resourceV1Beta1ResourceSlice
		case is resource.v1alpha3.DeviceClass.Type:
			self = .resourceV1Alpha3DeviceClass
		case is resource.v1alpha3.ResourceClaim.Type:
			self = .resourceV1Alpha3ResourceClaim
		case is resource.v1alpha3.ResourceClaimTemplate.Type:
			self = .resourceV1Alpha3ResourceClaimTemplate
		case is resource.v1alpha3.ResourceSlice.Type:
			self = .resourceV1Alpha3ResourceSlice
		case is scheduling.v1.PriorityClass.Type:
			self = .schedulingV1PriorityClass
		case is storage.v1.CSIDriver.Type:
			self = .storageV1CSIDriver
		case is storage.v1.CSINode.Type:
			self = .storageV1CSINode
		case is storage.v1.CSIStorageCapacity.Type:
			self = .storageV1CSIStorageCapacity
		case is storage.v1.StorageClass.Type:
			self = .storageV1StorageClass
		case is storage.v1.VolumeAttachment.Type:
			self = .storageV1VolumeAttachment
		case is storage.v1beta1.VolumeAttributesClass.Type:
			self = .storageV1Beta1VolumeAttributesClass
		case is storage.v1alpha1.VolumeAttributesClass.Type:
			self = .storageV1Alpha1VolumeAttributesClass
		case is storagemigration.v1alpha1.StorageVersionMigration.Type:
			self = .storagemigrationV1Alpha1StorageVersionMigration
		default:
			return nil
		}
	}
}
