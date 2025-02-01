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
/// Kubernetes v1.32.0
/// admissionregistration.v1.ValidatingWebhook
///

import Foundation

// MARK: - admissionregistration.v1.ValidatingWebhook

public extension admissionregistration.v1 {

	///
	/// ValidatingWebhook describes an admission webhook and the resources and operations it applies to.
	///
	struct ValidatingWebhook: KubernetesResource {
		///
		/// AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
		///
		public var admissionReviewVersions: [String]
		///
		/// ClientConfig defines how to communicate with the hook. Required
		///
		public var clientConfig: admissionregistration.v1.WebhookClientConfig
		///
		/// FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
		///
		public var failurePolicy: String?
		///
		/// MatchConditions is a list of conditions that must be met for a request to be sent to this webhook. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
		///
		/// The exact matching logic is (in order):
		///   1. If ANY matchCondition evaluates to FALSE, the webhook is skipped.
		///   2. If ALL matchConditions evaluate to TRUE, the webhook is called.
		///   3. If any matchCondition evaluates to an error (but none are FALSE):
		///      - If failurePolicy=Fail, reject the request
		///      - If failurePolicy=Ignore, the error is ignored and the webhook is skipped
		///
		public var matchConditions: [admissionregistration.v1.MatchCondition]?
		///
		/// matchPolicy defines how the "rules" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
		///
		/// - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.
		///
		/// - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.
		///
		/// Defaults to "Equivalent"
		///
		public var matchPolicy: String?
		///
		/// The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
		///
		public var name: String
		///
		/// NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.
		///
		/// For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
		///   "matchExpressions": [
		///     {
		///       "key": "runlevel",
		///       "operator": "NotIn",
		///       "values": [
		///         "0",
		///         "1"
		///       ]
		///     }
		///   ]
		/// }
		///
		/// If instead you want to only run the webhook on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
		///   "matchExpressions": [
		///     {
		///       "key": "environment",
		///       "operator": "In",
		///       "values": [
		///         "prod",
		///         "staging"
		///       ]
		///     }
		///   ]
		/// }
		///
		/// See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.
		///
		/// Default to the empty LabelSelector, which matches everything.
		///
		public var namespaceSelector: meta.v1.LabelSelector?
		///
		/// ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
		///
		public var objectSelector: meta.v1.LabelSelector?
		///
		/// Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
		///
		public var rules: [admissionregistration.v1.RuleWithOperations]?
		///
		/// SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
		///
		public var sideEffects: String
		///
		/// TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
		///
		public var timeoutSeconds: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			admissionReviewVersions: [String],
			clientConfig: admissionregistration.v1.WebhookClientConfig,
			failurePolicy: String? = nil,
			matchConditions: [admissionregistration.v1.MatchCondition]? = nil,
			matchPolicy: String? = nil,
			name: String,
			namespaceSelector: meta.v1.LabelSelector? = nil,
			objectSelector: meta.v1.LabelSelector? = nil,
			rules: [admissionregistration.v1.RuleWithOperations]? = nil,
			sideEffects: String,
			timeoutSeconds: Int32? = nil
		) {
			self.admissionReviewVersions = admissionReviewVersions
			self.clientConfig = clientConfig
			self.failurePolicy = failurePolicy
			self.matchConditions = matchConditions
			self.matchPolicy = matchPolicy
			self.name = name
			self.namespaceSelector = namespaceSelector
			self.objectSelector = objectSelector
			self.rules = rules
			self.sideEffects = sideEffects
			self.timeoutSeconds = timeoutSeconds
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1.ValidatingWebhook {

	private enum CodingKeys: String, CodingKey {

		case admissionReviewVersions = "admissionReviewVersions"
		case clientConfig = "clientConfig"
		case failurePolicy = "failurePolicy"
		case matchConditions = "matchConditions"
		case matchPolicy = "matchPolicy"
		case name = "name"
		case namespaceSelector = "namespaceSelector"
		case objectSelector = "objectSelector"
		case rules = "rules"
		case sideEffects = "sideEffects"
		case timeoutSeconds = "timeoutSeconds"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.admissionReviewVersions = try container.decode([String].self, forKey: .admissionReviewVersions)
		self.clientConfig = try container.decode(admissionregistration.v1.WebhookClientConfig.self, forKey: .clientConfig)
		self.failurePolicy = try container.decodeIfPresent(String.self, forKey: .failurePolicy)
		self.matchConditions = try container.decodeIfPresent([admissionregistration.v1.MatchCondition].self, forKey: .matchConditions)
		self.matchPolicy = try container.decodeIfPresent(String.self, forKey: .matchPolicy)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespaceSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .namespaceSelector)
		self.objectSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .objectSelector)
		self.rules = try container.decodeIfPresent([admissionregistration.v1.RuleWithOperations].self, forKey: .rules)
		self.sideEffects = try container.decode(String.self, forKey: .sideEffects)
		self.timeoutSeconds = try container.decodeIfPresent(Int32.self, forKey: .timeoutSeconds)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(admissionReviewVersions, forKey: .admissionReviewVersions)
		try encodingContainer.encode(clientConfig, forKey: .clientConfig)
		try encodingContainer.encode(failurePolicy, forKey: .failurePolicy)
		try encodingContainer.encode(matchConditions, forKey: .matchConditions)
		try encodingContainer.encode(matchPolicy, forKey: .matchPolicy)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespaceSelector, forKey: .namespaceSelector)
		try encodingContainer.encode(objectSelector, forKey: .objectSelector)
		try encodingContainer.encode(rules, forKey: .rules)
		try encodingContainer.encode(sideEffects, forKey: .sideEffects)
		try encodingContainer.encode(timeoutSeconds, forKey: .timeoutSeconds)
	}
}
