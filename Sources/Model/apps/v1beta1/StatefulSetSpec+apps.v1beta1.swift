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

public extension apps.v1beta1 {

	///
	/// A StatefulSetSpec is the specification of a StatefulSet.
	///
	struct StatefulSetSpec: KubernetesResource {
		///
		/// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
		///
		public var podManagementPolicy: String?
		///
		/// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
		///
		public var replicas: Int32?
		///
		/// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
		///
		public var revisionHistoryLimit: Int32?
		///
		/// selector is a label query over pods that should match the replica count. If empty, defaulted to labels on the pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
		///
		public var serviceName: String
		///
		/// template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
		///
		public var template: core.v1.PodTemplateSpec
		///
		/// updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
		///
		public var updateStrategy: apps.v1beta1.StatefulSetUpdateStrategy?
		///
		/// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
		///
		public var volumeClaimTemplates: [core.v1.PersistentVolumeClaim]?
		///
		/// Default memberwise initializer
		///
		public init(
			podManagementPolicy: String? = nil,
			replicas: Int32? = nil,
			revisionHistoryLimit: Int32? = nil,
			selector: meta.v1.LabelSelector? = nil,
			serviceName: String,
			template: core.v1.PodTemplateSpec,
			updateStrategy: apps.v1beta1.StatefulSetUpdateStrategy? = nil,
			volumeClaimTemplates: [core.v1.PersistentVolumeClaim]? = nil
		) {
			self.podManagementPolicy = podManagementPolicy
			self.replicas = replicas
			self.revisionHistoryLimit = revisionHistoryLimit
			self.selector = selector
			self.serviceName = serviceName
			self.template = template
			self.updateStrategy = updateStrategy
			self.volumeClaimTemplates = volumeClaimTemplates
		}
	}
}

///
/// Codable conformance
///
extension apps.v1beta1.StatefulSetSpec {

	private enum CodingKeys: String, CodingKey {
		case podManagementPolicy = "podManagementPolicy"
		case replicas = "replicas"
		case revisionHistoryLimit = "revisionHistoryLimit"
		case selector = "selector"
		case serviceName = "serviceName"
		case template = "template"
		case updateStrategy = "updateStrategy"
		case volumeClaimTemplates = "volumeClaimTemplates"
	}

}

