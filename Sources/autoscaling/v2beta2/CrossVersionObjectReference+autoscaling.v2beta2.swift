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
	/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
	///
	struct CrossVersionObjectReference: KubernetesResource {
		///
		/// API version of the referent
		///
		public var apiVersion: String?
		///
		/// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
		///
		public var kind: String
		///
		/// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			kind: String,
			name: String
		) {
			self.apiVersion = apiVersion
			self.kind = kind
			self.name = name
		}
	}
}

