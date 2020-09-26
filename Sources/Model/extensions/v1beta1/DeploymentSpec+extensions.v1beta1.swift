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

public extension extensions.v1beta1 {

	///
	/// DeploymentSpec is the specification of the desired behavior of the Deployment.
	///
	struct DeploymentSpec: KubernetesResource {
		///
		/// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
		///
		public var minReadySeconds: Int32?
		///
		/// Indicates that the deployment is paused and will not be processed by the deployment controller.
		///
		public var paused: Bool?
		///
		/// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. This is set to the max value of int32 (i.e. 2147483647) by default, which means "no deadline".
		///
		public var progressDeadlineSeconds: Int32?
		///
		/// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
		///
		public var replicas: Int32?
		///
		/// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. This is set to the max value of int32 (i.e. 2147483647) by default, which means "retaining all old RelicaSets".
		///
		public var revisionHistoryLimit: Int32?
		///
		/// DEPRECATED. The config this deployment is rolling back to. Will be cleared after rollback is done.
		///
		public var rollbackTo: extensions.v1beta1.RollbackConfig?
		///
		/// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// The deployment strategy to use to replace existing pods with new ones.
		///
		public var strategy: extensions.v1beta1.DeploymentStrategy?
		///
		/// Template describes the pods that will be created.
		///
		public var template: core.v1.PodTemplateSpec
		///
		/// Default memberwise initializer
		///
		public init(
			minReadySeconds: Int32? = nil,
			paused: Bool? = nil,
			progressDeadlineSeconds: Int32? = nil,
			replicas: Int32? = nil,
			revisionHistoryLimit: Int32? = nil,
			rollbackTo: extensions.v1beta1.RollbackConfig? = nil,
			selector: meta.v1.LabelSelector? = nil,
			strategy: extensions.v1beta1.DeploymentStrategy? = nil,
			template: core.v1.PodTemplateSpec
		) {
			self.minReadySeconds = minReadySeconds
			self.paused = paused
			self.progressDeadlineSeconds = progressDeadlineSeconds
			self.replicas = replicas
			self.revisionHistoryLimit = revisionHistoryLimit
			self.rollbackTo = rollbackTo
			self.selector = selector
			self.strategy = strategy
			self.template = template
		}
	}
}

///
/// Codable conformance
///
extension extensions.v1beta1.DeploymentSpec {

	private enum CodingKeys: String, CodingKey {
		case minReadySeconds = "minReadySeconds"
		case paused = "paused"
		case progressDeadlineSeconds = "progressDeadlineSeconds"
		case replicas = "replicas"
		case revisionHistoryLimit = "revisionHistoryLimit"
		case rollbackTo = "rollbackTo"
		case selector = "selector"
		case strategy = "strategy"
		case template = "template"
	}

}

