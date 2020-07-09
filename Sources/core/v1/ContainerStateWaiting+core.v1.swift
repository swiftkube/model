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
	/// ContainerStateWaiting is a waiting state of a container.
	///
	struct ContainerStateWaiting: KubernetesResource {
		///
		/// Message regarding why the container is not yet running.
		///
		public var message: String?

		///
		/// (brief) reason the container is not yet running.
		///
		public var reason: String?

	}
}

