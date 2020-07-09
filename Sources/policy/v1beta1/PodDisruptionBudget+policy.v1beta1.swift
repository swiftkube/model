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

public extension policy.v1beta1 {

	///
	/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
	///
	struct PodDisruptionBudget: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		let apiVersion: String = "policy/v1beta1"

		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		let kind: String = "PodDisruptionBudget"

		///
		/// No description
		///
		var metadata: meta.v1.ObjectMeta?

		///
		/// Specification of the desired behavior of the PodDisruptionBudget.
		///
		var spec: policy.v1beta1.PodDisruptionBudgetSpec?

		///
		/// Most recently observed status of the PodDisruptionBudget.
		///
		var status: policy.v1beta1.PodDisruptionBudgetStatus?

	}
}

