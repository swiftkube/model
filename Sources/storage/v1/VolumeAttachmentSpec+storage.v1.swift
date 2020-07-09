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
	/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
	///
	struct VolumeAttachmentSpec: KubernetesResource {
		///
		/// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
		///
		var attacher: String

		///
		/// The node that the volume should be attached to.
		///
		var nodeName: String

		///
		/// Source represents the volume that should be attached.
		///
		var source: storage.v1.VolumeAttachmentSource

	}
}

