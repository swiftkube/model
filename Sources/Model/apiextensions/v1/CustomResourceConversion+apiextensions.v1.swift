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

public extension apiextensions.v1 {

	///
	/// CustomResourceConversion describes how to convert different versions of a CR.
	///
	struct CustomResourceConversion: KubernetesResource {
		///
		/// strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
		///   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
		///
		public var strategy: String
		///
		/// webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`.
		///
		public var webhook: apiextensions.v1.WebhookConversion?
		///
		/// Default memberwise initializer
		///
		public init(
			strategy: String,
			webhook: apiextensions.v1.WebhookConversion? = nil
		) {
			self.strategy = strategy
			self.webhook = webhook
		}
	}
}

