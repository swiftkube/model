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

public extension autoscaling.v2beta2 {

	///
	/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
	///
	struct MetricSpec: KubernetesResource, Codable {
	
		///
		/// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
		///
		var external: autoscaling.v2beta2.ExternalMetricSource?
	
		///
		/// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
		///
		var object: autoscaling.v2beta2.ObjectMetricSource?
	
		///
		/// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
		///
		var pods: autoscaling.v2beta2.PodsMetricSource?
	
		///
		/// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
		///
		var resource: autoscaling.v2beta2.ResourceMetricSource?
	
		///
		/// type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
		///
		var type: String
	
	}
}

