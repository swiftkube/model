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
	/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
	///
	struct ContainerState: KubernetesResource {
		///
		/// Details about a running container
		///
		public var running: core.v1.ContainerStateRunning?

		///
		/// Details about a terminated container
		///
		public var terminated: core.v1.ContainerStateTerminated?

		///
		/// Details about a waiting container
		///
		public var waiting: core.v1.ContainerStateWaiting?

	}
}

