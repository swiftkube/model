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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// autoscaling.v2beta1.PodsMetricStatus
///

import Foundation

public extension autoscaling.v2beta1 {

	///
	/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
	///
	struct PodsMetricStatus: KubernetesResource {
		///
		/// currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
		///
		public var currentAverageValue: Quantity
		///
		/// metricName is the name of the metric in question
		///
		public var metricName: String
		///
		/// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			currentAverageValue: Quantity,
			metricName: String,
			selector: meta.v1.LabelSelector? = nil
		) {
			self.currentAverageValue = currentAverageValue
			self.metricName = metricName
			self.selector = selector
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta1.PodsMetricStatus {

	private enum CodingKeys: String, CodingKey {

		case currentAverageValue = "currentAverageValue"
		case metricName = "metricName"
		case selector = "selector"
	}

}

