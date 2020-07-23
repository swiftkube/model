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

public extension settings.v1alpha1 {

	///
	/// PodPresetSpec is a description of a pod preset.
	///
	struct PodPresetSpec: KubernetesResource {
		///
		/// Env defines the collection of EnvVar to inject into containers.
		///
		public var env: [core.v1.EnvVar]?
		///
		/// EnvFrom defines the collection of EnvFromSource to inject into containers.
		///
		public var envFrom: [core.v1.EnvFromSource]?
		///
		/// Selector is a label query over a set of resources, in this case pods. Required.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// VolumeMounts defines the collection of VolumeMount to inject into containers.
		///
		public var volumeMounts: [core.v1.VolumeMount]?
		///
		/// Volumes defines the collection of Volume to inject into the pod.
		///
		public var volumes: [core.v1.Volume]?
		///
		/// Default memberwise initializer
		///
		public init(
			env: [core.v1.EnvVar]?, 
			envFrom: [core.v1.EnvFromSource]?, 
			selector: meta.v1.LabelSelector?, 
			volumeMounts: [core.v1.VolumeMount]?, 
			volumes: [core.v1.Volume]?
		) {
			self.env = env
			self.envFrom = envFrom
			self.selector = selector
			self.volumeMounts = volumeMounts
			self.volumes = volumes
		}
	}
}

