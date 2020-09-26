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
	/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
	///
	struct ExternalMetricSource: KubernetesResource {
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2beta2.MetricIdentifier
		///
		/// target specifies the target value for the given metric
		///
		public var target: autoscaling.v2beta2.MetricTarget
		///
		/// Default memberwise initializer
		///
		public init(
			metric: autoscaling.v2beta2.MetricIdentifier,
			target: autoscaling.v2beta2.MetricTarget
		) {
			self.metric = metric
			self.target = target
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.ExternalMetricSource {

	private enum CodingKeys: String, CodingKey {
		case metric = "metric"
		case target = "target"
	}

}

