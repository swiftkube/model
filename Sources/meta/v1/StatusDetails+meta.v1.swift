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

public extension meta.v1 {

	///
	/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
	///
	struct StatusDetails: KubernetesResource, Codable {
	
		///
		/// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		var kind: String?
	
		///
		/// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
		///
		var causes: [meta.v1.StatusCause]?
	
		///
		/// The group attribute of the resource associated with the status StatusReason.
		///
		var group: String?
	
		///
		/// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
		///
		var name: String?
	
		///
		/// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
		///
		var retryAfterSeconds: Int32?
	
		///
		/// UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
		///
		var uid: String?
	
	}
}

