//
// Copyright 2020 Swiftkube Project
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

	static func node(_ block: (inout core.v1.Node) -> Void) -> core.v1.Node {
		build(core.v1.Node(), with: block)
	}

	static func node(name: String, _ block: ((inout core.v1.Node) -> Void)? = nil) -> core.v1.Node {
		build(core.v1.Node(metadata: meta.v1.ObjectMeta(name: name)), with: block ?? { _ in })
	}

	static func nodeSpec(_ block: (inout core.v1.NodeSpec) -> Void) -> core.v1.NodeSpec {
		build(core.v1.NodeSpec(), with: block)
	}
}
