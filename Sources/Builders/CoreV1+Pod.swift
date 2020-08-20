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

public extension sk {

	static func pod(_ block: (inout core.v1.Pod) -> Void) -> core.v1.Pod {
		return build(core.v1.Pod(), with: block)
	}

	static func podSpec(_ block: (inout core.v1.PodSpec) -> Void) -> core.v1.PodSpec {
		return build(core.v1.PodSpec(containers: []), with: block)
	}
}
