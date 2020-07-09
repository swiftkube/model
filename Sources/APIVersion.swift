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
/// API Groups
///
public enum APIGroup: CustomStringConvertible {

	case coreV1
	case admissionregistrationV1
	case admissionregistrationV1Beta1
	case apiextensionsV1
	case apiextensionsV1Beta1
	case apiregistrationV1
	case apiregistrationV1Beta1
	case appsV1
	case appsV1Beta1
	case appsV1Beta2
	case auditregistrationV1Alpha1
	case authenticationV1
	case authenticationV1Beta1
	case authorizationV1
	case authorizationV1Beta1
	case autoscalingV1
	case autoscalingV2Beta1
	case autoscalingV2Beta2
	case batchV1
	case batchV1Beta1
	case batchV2Alpha1
	case certificatesV1Beta1
	case coordinationV1
	case coordinationV1Beta1
	case discoveryV1Alpha1
	case eventsV1Beta1
	case extensionsV1Beta1
	case networkingV1
	case networkingV1Beta1
	case nodeV1Alpha1
	case nodeV1Beta1
	case policyV1Beta1
	case rbacV1
	case rbacV1Alpha1
	case rbacV1Beta1
	case schedulingV1
	case schedulingV1Alpha1
	case schedulingV1Beta1
	case settingsV1Alpha1
	case storageV1
	case storageV1Alpha1
	case storageV1Beta1
	case custom(group: String, version: String)

	public var description: String {
		guard group != "" else {
			return version
		}
		return "\(group)/\(version)"
	}

	public var group: String {
		switch self {

		case .coreV1:
			return ""
		case .admissionregistrationV1:
			return "admissionregistration.k8s.io"
		case .admissionregistrationV1Beta1:
			return "admissionregistration.k8s.io"
		case .apiextensionsV1:
			return "apiextensions.k8s.io"
		case .apiextensionsV1Beta1:
			return "apiextensions.k8s.io"
		case .apiregistrationV1:
			return "apiregistration.k8s.io"
		case .apiregistrationV1Beta1:
			return "apiregistration.k8s.io"
		case .appsV1:
			return "apps"
		case .appsV1Beta1:
			return "apps"
		case .appsV1Beta2:
			return "apps"
		case .auditregistrationV1Alpha1:
			return "auditregistration.k8s.io"
		case .authenticationV1:
			return "authentication.k8s.io"
		case .authenticationV1Beta1:
			return "authentication.k8s.io"
		case .authorizationV1:
			return "authorization.k8s.io"
		case .authorizationV1Beta1:
			return "authorization.k8s.io"
		case .autoscalingV1:
			return "autoscaling"
		case .autoscalingV2Beta1:
			return "autoscaling"
		case .autoscalingV2Beta2:
			return "autoscaling"
		case .batchV1:
			return "batch"
		case .batchV1Beta1:
			return "batch"
		case .batchV2Alpha1:
			return "batch"
		case .certificatesV1Beta1:
			return "certificates.k8s.io"
		case .coordinationV1:
			return "coordination.k8s.io"
		case .coordinationV1Beta1:
			return "coordination.k8s.io"
		case .discoveryV1Alpha1:
			return "discovery.k8s.io"
		case .eventsV1Beta1:
			return "events.k8s.io"
		case .extensionsV1Beta1:
			return "extensions"
		case .networkingV1:
			return "networking.k8s.io"
		case .networkingV1Beta1:
			return "networking.k8s.io"
		case .nodeV1Alpha1:
			return "node.k8s.io"
		case .nodeV1Beta1:
			return "node.k8s.io"
		case .policyV1Beta1:
			return "policy"
		case .rbacV1:
			return "rbac.authorization.k8s.io"
		case .rbacV1Alpha1:
			return "rbac.authorization.k8s.io"
		case .rbacV1Beta1:
			return "rbac.authorization.k8s.io"
		case .schedulingV1:
			return "scheduling.k8s.io"
		case .schedulingV1Alpha1:
			return "scheduling.k8s.io"
		case .schedulingV1Beta1:
			return "scheduling.k8s.io"
		case .settingsV1Alpha1:
			return "settings.k8s.io"
		case .storageV1:
			return "storage.k8s.io"
		case .storageV1Alpha1:
			return "storage.k8s.io"
		case .storageV1Beta1:
			return "storage.k8s.io"
		case let .custom(group, _):
			return group
		}
	}

	public var version: String {
		switch self {

		case .coreV1:
			return "v1"
		case .admissionregistrationV1:
			return "v1"
		case .admissionregistrationV1Beta1:
			return "v1beta1"
		case .apiextensionsV1:
			return "v1"
		case .apiextensionsV1Beta1:
			return "v1beta1"
		case .apiregistrationV1:
			return "v1"
		case .apiregistrationV1Beta1:
			return "v1beta1"
		case .appsV1:
			return "v1"
		case .appsV1Beta1:
			return "v1beta1"
		case .appsV1Beta2:
			return "v1beta2"
		case .auditregistrationV1Alpha1:
			return "v1alpha1"
		case .authenticationV1:
			return "v1"
		case .authenticationV1Beta1:
			return "v1beta1"
		case .authorizationV1:
			return "v1"
		case .authorizationV1Beta1:
			return "v1beta1"
		case .autoscalingV1:
			return "v1"
		case .autoscalingV2Beta1:
			return "v2beta1"
		case .autoscalingV2Beta2:
			return "v2beta2"
		case .batchV1:
			return "v1"
		case .batchV1Beta1:
			return "v1beta1"
		case .batchV2Alpha1:
			return "v2alpha1"
		case .certificatesV1Beta1:
			return "v1beta1"
		case .coordinationV1:
			return "v1"
		case .coordinationV1Beta1:
			return "v1beta1"
		case .discoveryV1Alpha1:
			return "v1alpha1"
		case .eventsV1Beta1:
			return "v1beta1"
		case .extensionsV1Beta1:
			return "v1beta1"
		case .networkingV1:
			return "v1"
		case .networkingV1Beta1:
			return "v1beta1"
		case .nodeV1Alpha1:
			return "v1alpha1"
		case .nodeV1Beta1:
			return "v1beta1"
		case .policyV1Beta1:
			return "v1beta1"
		case .rbacV1:
			return "v1"
		case .rbacV1Alpha1:
			return "v1alpha1"
		case .rbacV1Beta1:
			return "v1beta1"
		case .schedulingV1:
			return "v1"
		case .schedulingV1Alpha1:
			return "v1alpha1"
		case .schedulingV1Beta1:
			return "v1beta1"
		case .settingsV1Alpha1:
			return "v1alpha1"
		case .storageV1:
			return "v1"
		case .storageV1Alpha1:
			return "v1alpha1"
		case .storageV1Beta1:
			return "v1beta1"
		case let .custom(_, version):
			return version
		}
	}
}
