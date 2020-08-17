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

public extension events.v1beta1 {

	///
	/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
	///
	struct Event: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "events.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "Event"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// What action was taken/failed regarding to the regarding object.
		///
		public var action: String?
		///
		/// Deprecated field assuring backward compatibility with core.v1 Event type
		///
		public var deprecatedCount: Int32?
		///
		/// Deprecated field assuring backward compatibility with core.v1 Event type
		///
		public var deprecatedFirstTimestamp: String?
		///
		/// Deprecated field assuring backward compatibility with core.v1 Event type
		///
		public var deprecatedLastTimestamp: String?
		///
		/// Deprecated field assuring backward compatibility with core.v1 Event type
		///
		public var deprecatedSource: core.v1.EventSource?
		///
		/// Required. Time when this Event was first observed.
		///
		public var eventTime: String
		///
		/// Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
		///
		public var note: String?
		///
		/// Why the action was taken.
		///
		public var reason: String?
		///
		/// The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
		///
		public var regarding: core.v1.ObjectReference?
		///
		/// Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
		///
		public var related: core.v1.ObjectReference?
		///
		/// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
		///
		public var reportingController: String?
		///
		/// ID of the controller instance, e.g. `kubelet-xyzf`.
		///
		public var reportingInstance: String?
		///
		/// Data about the Event series this event represents or nil if it's a singleton Event.
		///
		public var series: events.v1beta1.EventSeries?
		///
		/// Type of this event (Normal, Warning), new types could be added in the future.
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			action: String? = nil,
			deprecatedCount: Int32? = nil,
			deprecatedFirstTimestamp: String? = nil,
			deprecatedLastTimestamp: String? = nil,
			deprecatedSource: core.v1.EventSource? = nil,
			eventTime: String,
			note: String? = nil,
			reason: String? = nil,
			regarding: core.v1.ObjectReference? = nil,
			related: core.v1.ObjectReference? = nil,
			reportingController: String? = nil,
			reportingInstance: String? = nil,
			series: events.v1beta1.EventSeries? = nil,
			type: String? = nil
		) {
			self.metadata = metadata
			self.action = action
			self.deprecatedCount = deprecatedCount
			self.deprecatedFirstTimestamp = deprecatedFirstTimestamp
			self.deprecatedLastTimestamp = deprecatedLastTimestamp
			self.deprecatedSource = deprecatedSource
			self.eventTime = eventTime
			self.note = note
			self.reason = reason
			self.regarding = regarding
			self.related = related
			self.reportingController = reportingController
			self.reportingInstance = reportingInstance
			self.series = series
			self.type = type
		}
	}
}

