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
/// events.v1.Event
///

import Foundation

// MARK: - events.v1.Event

public extension events.v1 {

	///
	/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
	///
	struct Event: KubernetesAPIResource, MetadataHavingResource, NamespacedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = events.v1.EventList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "events.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "Event"
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
		///
		public var action: String?
		///
		/// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
		///
		public var deprecatedCount: Int32?
		///
		/// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
		///
		public var deprecatedFirstTimestamp: Date?
		///
		/// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
		///
		public var deprecatedLastTimestamp: Date?
		///
		/// deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
		///
		public var deprecatedSource: core.v1.EventSource?
		///
		/// eventTime is the time when this Event was first observed. It is required.
		///
		public var eventTime: Date
		///
		/// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
		///
		public var note: String?
		///
		/// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
		///
		public var reason: String?
		///
		/// regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
		///
		public var regarding: core.v1.ObjectReference?
		///
		/// related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
		///
		public var related: core.v1.ObjectReference?
		///
		/// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
		///
		public var reportingController: String?
		///
		/// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
		///
		public var reportingInstance: String?
		///
		/// series is data about the Event series this event represents or nil if it's a singleton Event.
		///
		public var series: events.v1.EventSeries?
		///
		/// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			action: String? = nil,
			deprecatedCount: Int32? = nil,
			deprecatedFirstTimestamp: Date? = nil,
			deprecatedLastTimestamp: Date? = nil,
			deprecatedSource: core.v1.EventSource? = nil,
			eventTime: Date,
			note: String? = nil,
			reason: String? = nil,
			regarding: core.v1.ObjectReference? = nil,
			related: core.v1.ObjectReference? = nil,
			reportingController: String? = nil,
			reportingInstance: String? = nil,
			series: events.v1.EventSeries? = nil,
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

///
/// Codable conformance
///
public extension events.v1.Event {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case action = "action"
		case deprecatedCount = "deprecatedCount"
		case deprecatedFirstTimestamp = "deprecatedFirstTimestamp"
		case deprecatedLastTimestamp = "deprecatedLastTimestamp"
		case deprecatedSource = "deprecatedSource"
		case eventTime = "eventTime"
		case note = "note"
		case reason = "reason"
		case regarding = "regarding"
		case related = "related"
		case reportingController = "reportingController"
		case reportingInstance = "reportingInstance"
		case series = "series"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.action = try container.decodeIfPresent(String.self, forKey: .action)
		self.deprecatedCount = try container.decodeIfPresent(Int32.self, forKey: .deprecatedCount)
		self.deprecatedFirstTimestamp = try container.decodeIfPresent(Date.self, forKey: .deprecatedFirstTimestamp)
		self.deprecatedLastTimestamp = try container.decodeIfPresent(Date.self, forKey: .deprecatedLastTimestamp)
		self.deprecatedSource = try container.decodeIfPresent(core.v1.EventSource.self, forKey: .deprecatedSource)
		self.eventTime = try container.decode(Date.self, forKey: .eventTime)
		self.note = try container.decodeIfPresent(String.self, forKey: .note)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
		self.regarding = try container.decodeIfPresent(core.v1.ObjectReference.self, forKey: .regarding)
		self.related = try container.decodeIfPresent(core.v1.ObjectReference.self, forKey: .related)
		self.reportingController = try container.decodeIfPresent(String.self, forKey: .reportingController)
		self.reportingInstance = try container.decodeIfPresent(String.self, forKey: .reportingInstance)
		self.series = try container.decodeIfPresent(events.v1.EventSeries.self, forKey: .series)
		self.type = try container.decodeIfPresent(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(action, forKey: .action)
		try encodingContainer.encode(deprecatedCount, forKey: .deprecatedCount)
		try encodingContainer.encode(deprecatedFirstTimestamp, forKey: .deprecatedFirstTimestamp)
		try encodingContainer.encode(deprecatedLastTimestamp, forKey: .deprecatedLastTimestamp)
		try encodingContainer.encode(deprecatedSource, forKey: .deprecatedSource)
		try encodingContainer.encode(eventTime, forKey: .eventTime)
		try encodingContainer.encode(note, forKey: .note)
		try encodingContainer.encode(reason, forKey: .reason)
		try encodingContainer.encode(regarding, forKey: .regarding)
		try encodingContainer.encode(related, forKey: .related)
		try encodingContainer.encode(reportingController, forKey: .reportingController)
		try encodingContainer.encode(reportingInstance, forKey: .reportingInstance)
		try encodingContainer.encode(series, forKey: .series)
		try encodingContainer.encode(type, forKey: .type)
	}
}
