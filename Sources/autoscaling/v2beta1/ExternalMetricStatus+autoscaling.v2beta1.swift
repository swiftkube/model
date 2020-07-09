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

public extension autoscaling.v2beta1 {

	///
	/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
	///
	struct ExternalMetricStatus: KubernetesResource {
		///
		/// currentAverageValue is the current value of metric averaged over autoscaled pods.
		///
		var currentAverageValue: Quantity?

		///
		/// currentValue is the current value of the metric (as a quantity)
		///
		var currentValue: Quantity

		///
		/// metricName is the name of a metric used for autoscaling in metric system.
		///
		var metricName: String

		///
		/// metricSelector is used to identify a specific time series within a given metric.
		///
		var metricSelector: meta.v1.LabelSelector?

	}
}

