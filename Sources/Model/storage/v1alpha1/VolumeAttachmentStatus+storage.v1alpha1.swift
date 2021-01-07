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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// storage.v1alpha1.VolumeAttachmentStatus
///

import Foundation

public extension storage.v1alpha1 {

	///
	/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
	///
	struct VolumeAttachmentStatus: KubernetesResource {
		///
		/// The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
		///
		public var attachError: storage.v1alpha1.VolumeError?
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
		public var detachError: storage.v1alpha1.VolumeError?
		///
		/// Default memberwise initializer
		///
		public init(
			attachError: storage.v1alpha1.VolumeError? = nil,
			attached: Bool,
			attachmentMetadata: [String: String]? = nil,
			detachError: storage.v1alpha1.VolumeError? = nil
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
public extension storage.v1alpha1.VolumeAttachmentStatus {

	private enum CodingKeys: String, CodingKey {

		case attachError = "attachError"
		case attached = "attached"
		case attachmentMetadata = "attachmentMetadata"
		case detachError = "detachError"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.attachError = try container.decodeIfPresent(storage.v1alpha1.VolumeError.self, forKey: .attachError)
		self.attached = try container.decode(Bool.self, forKey: .attached)
		self.attachmentMetadata = try container.decodeIfPresent([String: String].self, forKey: .attachmentMetadata)
		self.detachError = try container.decodeIfPresent(storage.v1alpha1.VolumeError.self, forKey: .detachError)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(attachError, forKey: .attachError)
		try container.encode(attached, forKey: .attached)
		try container.encode(attachmentMetadata, forKey: .attachmentMetadata)
		try container.encode(detachError, forKey: .detachError)
	}
}
