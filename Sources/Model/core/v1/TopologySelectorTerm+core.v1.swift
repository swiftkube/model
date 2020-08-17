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

public extension core.v1 {

	///
	/// A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
	///
	struct TopologySelectorTerm: KubernetesResource {
		///
		/// A list of topology selector requirements by labels.
		///
		public var matchLabelExpressions: [core.v1.TopologySelectorLabelRequirement]?
		///
		/// Default memberwise initializer
		///
		public init(
			matchLabelExpressions: [core.v1.TopologySelectorLabelRequirement]? = nil
		) {
			self.matchLabelExpressions = matchLabelExpressions
		}
	}
}

