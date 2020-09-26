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
	/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
	///
	struct VolumeAttachmentStatus: KubernetesResource {
		///
		/// The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
		///
		public var attachError: storage.v1.VolumeError?
		///
		/// Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
		///
		public var attached: Bool
		///
		/// Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
		///
		public var attachmentMetadata: [String: String]?
		///
		/// The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
		///
		public var detachError: storage.v1.VolumeError?
		///
		/// Default memberwise initializer
		///
		public init(
			attachError: storage.v1.VolumeError? = nil,
			attached: Bool,
			attachmentMetadata: [String: String]? = nil,
			detachError: storage.v1.VolumeError? = nil
		) {
			self.attachError = attachError
			self.attached = attached
			self.attachmentMetadata = attachmentMetadata
			self.detachError = detachError
		}
	}
}

///
/// Codable conformance
///
extension storage.v1.VolumeAttachmentStatus {

	private enum CodingKeys: String, CodingKey {
		case attachError = "attachError"
		case attached = "attached"
		case attachmentMetadata = "attachmentMetadata"
		case detachError = "detachError"
	}

}

