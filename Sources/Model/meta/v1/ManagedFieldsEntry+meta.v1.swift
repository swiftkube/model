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
/// Kubernetes v1.33.3
/// meta.v1.ManagedFieldsEntry
///

import Foundation

// MARK: - meta.v1.ManagedFieldsEntry

public extension meta.v1 {

	///
	/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
	///
	struct ManagedFieldsEntry: KubernetesResource {
		///
		/// APIVersion defines the version of this resource that this field set applies to. The format is "group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
		///
		public var apiVersion: String?
		///
		/// FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1"
		///
		public var fieldsType: String?
		///
		/// FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
		///
		public var fieldsV1: JSONObject?
		///
		/// Manager is an identifier of the workflow managing these fields.
		///
		public var manager: String?
		///
		/// Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
		///
		public var operation: String?
		///
		/// Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
		///
		public var subresource: String?
		///
		/// Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over.
		///
		public var time: Date?
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			fieldsType: String? = nil,
			fieldsV1: JSONObject? = nil,
			manager: String? = nil,
			operation: String? = nil,
			subresource: String? = nil,
			time: Date? = nil
		) {
			self.apiVersion = apiVersion
			self.fieldsType = fieldsType
			self.fieldsV1 = fieldsV1
			self.manager = manager
			self.operation = operation
			self.subresource = subresource
			self.time = time
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.ManagedFieldsEntry {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case fieldsType = "fieldsType"
		case fieldsV1 = "fieldsV1"
		case manager = "manager"
		case operation = "operation"
		case subresource = "subresource"
		case time = "time"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiVersion = try container.decodeIfPresent(String.self, forKey: .apiVersion)
		self.fieldsType = try container.decodeIfPresent(String.self, forKey: .fieldsType)
		self.fieldsV1 = try container.decodeIfPresent(JSONObject.self, forKey: .fieldsV1)
		self.manager = try container.decodeIfPresent(String.self, forKey: .manager)
		self.operation = try container.decodeIfPresent(String.self, forKey: .operation)
		self.subresource = try container.decodeIfPresent(String.self, forKey: .subresource)
		self.time = try container.decodeIfPresent(Date.self, forKey: .time)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(fieldsType, forKey: .fieldsType)
		try encodingContainer.encode(fieldsV1, forKey: .fieldsV1)
		try encodingContainer.encode(manager, forKey: .manager)
		try encodingContainer.encode(operation, forKey: .operation)
		try encodingContainer.encode(subresource, forKey: .subresource)
		try encodingContainer.encode(time, forKey: .time)
	}
}
