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
	/// VolumeMount describes a mounting of a Volume within a container.
	///
	struct VolumeMount: KubernetesResource {
		///
		/// Path within the container at which the volume should be mounted.  Must not contain ':'.
		///
		public var mountPath: String

		///
		/// mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
		///
		public var mountPropagation: String?

		///
		/// This must match the Name of a Volume.
		///
		public var name: String

		///
		/// Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
		///
		public var readOnly: Bool?

		///
		/// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
		///
		public var subPath: String?

		///
		/// Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive. This field is beta in 1.15.
		///
		public var subPathExpr: String?

	}
}

