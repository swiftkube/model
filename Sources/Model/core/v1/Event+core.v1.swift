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
	/// Event is a report of an event somewhere in the cluster.
	///
	struct Event: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "Event"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta
		///
		/// What action was taken/failed regarding to the Regarding object.
		///
		public var action: String?
		///
		/// The number of times this event has occurred.
		///
		public var count: Int32?
		///
		/// Time when this Event was first observed.
		///
		public var eventTime: String?
		///
		/// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
		///
		public var firstTimestamp: String?
		///
		/// The object that this event is about.
		///
		public var involvedObject: core.v1.ObjectReference
		///
		/// The time at which the most recent occurrence of this event was recorded.
		///
		public var lastTimestamp: String?
		///
		/// A human-readable description of the status of this operation.
		///
		public var message: String?
		///
		/// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
		///
		public var reason: String?
		///
		/// Optional secondary object for more complex actions.
		///
		public var related: core.v1.ObjectReference?
		///
		/// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
		///
		public var reportingComponent: String?
		///
		/// ID of the controller instance, e.g. `kubelet-xyzf`.
		///
		public var reportingInstance: String?
		///
		/// Data about the Event series this event represents or nil if it's a singleton Event.
		///
		public var series: core.v1.EventSeries?
		///
		/// The component reporting this event. Should be a short machine understandable string.
		///
		public var source: core.v1.EventSource?
		///
		/// Type of this event (Normal, Warning), new types could be added in the future
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta,
			action: String? = nil,
			count: Int32? = nil,
			eventTime: String? = nil,
			firstTimestamp: String? = nil,
			involvedObject: core.v1.ObjectReference,
			lastTimestamp: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			related: core.v1.ObjectReference? = nil,
			reportingComponent: String? = nil,
			reportingInstance: String? = nil,
			series: core.v1.EventSeries? = nil,
			source: core.v1.EventSource? = nil,
			type: String? = nil
		) {
			self.metadata = metadata
			self.action = action
			self.count = count
			self.eventTime = eventTime
			self.firstTimestamp = firstTimestamp
			self.involvedObject = involvedObject
			self.lastTimestamp = lastTimestamp
			self.message = message
			self.reason = reason
			self.related = related
			self.reportingComponent = reportingComponent
			self.reportingInstance = reportingInstance
			self.series = series
			self.source = source
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension core.v1.Event {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case action = "action"
		case count = "count"
		case eventTime = "eventTime"
		case firstTimestamp = "firstTimestamp"
		case involvedObject = "involvedObject"
		case lastTimestamp = "lastTimestamp"
		case message = "message"
		case reason = "reason"
		case related = "related"
		case reportingComponent = "reportingComponent"
		case reportingInstance = "reportingInstance"
		case series = "series"
		case source = "source"
		case type = "type"
	}

}

