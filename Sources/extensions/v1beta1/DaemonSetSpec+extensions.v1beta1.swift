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
	/// DaemonSetSpec is the specification of a daemon set.
	///
	struct DaemonSetSpec: KubernetesResource {
		///
		/// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
		///
		public var minReadySeconds: Int32?
		///
		/// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
		///
		public var revisionHistoryLimit: Int32?
		///
		/// A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
		///
		public var template: core.v1.PodTemplateSpec
		///
		/// DEPRECATED. A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
		///
		public var templateGeneration: Int64?
		///
		/// An update strategy to replace existing DaemonSet pods with new pods.
		///
		public var updateStrategy: extensions.v1beta1.DaemonSetUpdateStrategy?
		///
		/// Default memberwise initializer
		///
		public init(
			minReadySeconds: Int32?, 
			revisionHistoryLimit: Int32?, 
			selector: meta.v1.LabelSelector?, 
			template: core.v1.PodTemplateSpec, 
			templateGeneration: Int64?, 
			updateStrategy: extensions.v1beta1.DaemonSetUpdateStrategy?
		) {
			self.minReadySeconds = minReadySeconds
			self.revisionHistoryLimit = revisionHistoryLimit
			self.selector = selector
			self.template = template
			self.templateGeneration = templateGeneration
			self.updateStrategy = updateStrategy
		}
	}
}

