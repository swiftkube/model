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

public extension storage.v1 {

	///
	/// VolumeError captures an error encountered during a volume operation.
	///
	struct VolumeError: KubernetesResource {
		///
		/// String detailing the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
		///
		public var message: String?

		///
		/// Time the error was encountered.
		///
		public var time: String?

	}
}

