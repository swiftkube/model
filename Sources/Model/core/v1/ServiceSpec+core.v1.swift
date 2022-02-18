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
/// Kubernetes v1.22.7
/// core.v1.ServiceSpec
///

import Foundation

public extension core.v1 {

	///
	/// ServiceSpec describes the attributes that a user creates on a service.
	///
	struct ServiceSpec: KubernetesResource {
		///
		/// allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for services with type LoadBalancer.  Default is "true". It may be set to "false" if the cluster load-balancer does not rely on NodePorts.  If the caller requests specific NodePorts (by specifying a value), those requests will be respected, regardless of this field. This field may only be set for services with type LoadBalancer and will be cleared if the type is changed to any other type. This field is beta-level and is only honored by servers that enable the ServiceLBNodePortControl feature.
		///
		public var allocateLoadBalancerNodePorts: Bool?
		///
		/// clusterIP is the IP address of the service and is usually assigned randomly. If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be blank) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address. Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
		///
		public var clusterIP: String?
		///
		/// ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned randomly.  If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be empty) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName.  If this field is not specified, it will be initialized from the clusterIP field.  If this field is specified, clients must ensure that clusterIPs[0] and clusterIP have the same value.
		///
		/// Unless the "IPv6DualStack" feature gate is enabled, this field is limited to one value, which must be the same as the clusterIP field.  If the feature gate is enabled, this field may hold a maximum of two entries (dual-stack IPs, in either order).  These IPs must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
		///
		public var clusterIPs: [String]?
		///
		/// externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
		///
		public var externalIPs: [String]?
		///
		/// externalName is the external reference that discovery mechanisms will return as an alias for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a lowercase RFC-1123 hostname (https://tools.ietf.org/html/rfc1123) and requires `type` to be "ExternalName".
		///
		public var externalName: String?
		///
		/// externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
		///
		public var externalTrafficPolicy: String?
		///
		/// healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is specified, is in-range, and is not in use, it will be used.  If not specified, a value will be automatically allocated.  External systems (e.g. load-balancers) can use this port to determine if a given node holds endpoints for this service or not.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type).
		///
		public var healthCheckNodePort: Int32?
		///
		/// InternalTrafficPolicy specifies if the cluster internal traffic should be routed to all endpoints or node-local endpoints only. "Cluster" routes internal traffic to a Service to all endpoints. "Local" routes traffic to node-local endpoints only, traffic is dropped if no node-local endpoints are ready. The default value is "Cluster".
		///
		public var internalTrafficPolicy: String?
		///
		/// IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service, and is gated by the "IPv6DualStack" feature gate.  This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail.  This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service.  Valid values are "IPv4" and "IPv6".  This field only applies to Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless" services.  This field will be wiped when updating a Service to type ExternalName.
		///
		/// This field may hold a maximum of two entries (dual-stack families, in either order).  These families must correspond to the values of the clusterIPs field, if specified. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
		///
		public var ipFamilies: [String]?
		///
		/// IPFamilyPolicy represents the dual-stack-ness requested or required by this Service, and is gated by the "IPv6DualStack" feature gate.  If there is no value provided, then this field will be set to SingleStack. Services can be "SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or "RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field.  This field will be wiped when updating a service to type ExternalName.
		///
		public var ipFamilyPolicy: String?
		///
		/// loadBalancerClass is the class of the load balancer implementation this Service belongs to. If specified, the value of this field must be a label-style identifier, with an optional prefix, e.g. "internal-vip" or "example.com/internal-vip". Unprefixed names are reserved for end-users. This field can only be set when the Service type is 'LoadBalancer'. If not set, the default load balancer implementation is used, today this is typically done through the cloud provider integration, but should apply for any default implementation. If set, it is assumed that a load balancer implementation is watching for Services with a matching class. Any default load balancer implementation (e.g. cloud providers) should ignore Services that set this field. This field can only be set when creating or updating a Service to type 'LoadBalancer'. Once set, it can not be changed. This field will be wiped when a service is updated to a non 'LoadBalancer' type.
		///
		public var loadBalancerClass: String?
		///
		/// Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
		///
		public var loadBalancerIP: String?
		///
		/// If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/
		///
		public var loadBalancerSourceRanges: [String]?
		///
		/// The list of ports that are exposed by this service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
		///
		public var ports: [core.v1.ServicePort]?
		///
		/// publishNotReadyAddresses indicates that any agent which deals with endpoints for this Service should disregard any indications of ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.
		///
		public var publishNotReadyAddresses: Bool?
		///
		/// Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/
		///
		public var selector: [String: String]?
		///
		/// Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
		///
		public var sessionAffinity: String?
		///
		/// sessionAffinityConfig contains the configurations of session affinity.
		///
		public var sessionAffinityConfig: core.v1.SessionAffinityConfig?
		///
		/// type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the same endpoints as the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the same endpoints as the clusterIP. "ExternalName" aliases this service to the specified externalName. Several other fields do not apply to ExternalName services. More info: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			allocateLoadBalancerNodePorts: Bool? = nil,
			clusterIP: String? = nil,
			clusterIPs: [String]? = nil,
			externalIPs: [String]? = nil,
			externalName: String? = nil,
			externalTrafficPolicy: String? = nil,
			healthCheckNodePort: Int32? = nil,
			internalTrafficPolicy: String? = nil,
			ipFamilies: [String]? = nil,
			ipFamilyPolicy: String? = nil,
			loadBalancerClass: String? = nil,
			loadBalancerIP: String? = nil,
			loadBalancerSourceRanges: [String]? = nil,
			ports: [core.v1.ServicePort]? = nil,
			publishNotReadyAddresses: Bool? = nil,
			selector: [String: String]? = nil,
			sessionAffinity: String? = nil,
			sessionAffinityConfig: core.v1.SessionAffinityConfig? = nil,
			type: String? = nil
		) {
			self.allocateLoadBalancerNodePorts = allocateLoadBalancerNodePorts
			self.clusterIP = clusterIP
			self.clusterIPs = clusterIPs
			self.externalIPs = externalIPs
			self.externalName = externalName
			self.externalTrafficPolicy = externalTrafficPolicy
			self.healthCheckNodePort = healthCheckNodePort
			self.internalTrafficPolicy = internalTrafficPolicy
			self.ipFamilies = ipFamilies
			self.ipFamilyPolicy = ipFamilyPolicy
			self.loadBalancerClass = loadBalancerClass
			self.loadBalancerIP = loadBalancerIP
			self.loadBalancerSourceRanges = loadBalancerSourceRanges
			self.ports = ports
			self.publishNotReadyAddresses = publishNotReadyAddresses
			self.selector = selector
			self.sessionAffinity = sessionAffinity
			self.sessionAffinityConfig = sessionAffinityConfig
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ServiceSpec {

	private enum CodingKeys: String, CodingKey {

		case allocateLoadBalancerNodePorts = "allocateLoadBalancerNodePorts"
		case clusterIP = "clusterIP"
		case clusterIPs = "clusterIPs"
		case externalIPs = "externalIPs"
		case externalName = "externalName"
		case externalTrafficPolicy = "externalTrafficPolicy"
		case healthCheckNodePort = "healthCheckNodePort"
		case internalTrafficPolicy = "internalTrafficPolicy"
		case ipFamilies = "ipFamilies"
		case ipFamilyPolicy = "ipFamilyPolicy"
		case loadBalancerClass = "loadBalancerClass"
		case loadBalancerIP = "loadBalancerIP"
		case loadBalancerSourceRanges = "loadBalancerSourceRanges"
		case ports = "ports"
		case publishNotReadyAddresses = "publishNotReadyAddresses"
		case selector = "selector"
		case sessionAffinity = "sessionAffinity"
		case sessionAffinityConfig = "sessionAffinityConfig"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.allocateLoadBalancerNodePorts = try container.decodeIfPresent(Bool.self, forKey: .allocateLoadBalancerNodePorts)
		self.clusterIP = try container.decodeIfPresent(String.self, forKey: .clusterIP)
		self.clusterIPs = try container.decodeIfPresent([String].self, forKey: .clusterIPs)
		self.externalIPs = try container.decodeIfPresent([String].self, forKey: .externalIPs)
		self.externalName = try container.decodeIfPresent(String.self, forKey: .externalName)
		self.externalTrafficPolicy = try container.decodeIfPresent(String.self, forKey: .externalTrafficPolicy)
		self.healthCheckNodePort = try container.decodeIfPresent(Int32.self, forKey: .healthCheckNodePort)
		self.internalTrafficPolicy = try container.decodeIfPresent(String.self, forKey: .internalTrafficPolicy)
		self.ipFamilies = try container.decodeIfPresent([String].self, forKey: .ipFamilies)
		self.ipFamilyPolicy = try container.decodeIfPresent(String.self, forKey: .ipFamilyPolicy)
		self.loadBalancerClass = try container.decodeIfPresent(String.self, forKey: .loadBalancerClass)
		self.loadBalancerIP = try container.decodeIfPresent(String.self, forKey: .loadBalancerIP)
		self.loadBalancerSourceRanges = try container.decodeIfPresent([String].self, forKey: .loadBalancerSourceRanges)
		self.ports = try container.decodeIfPresent([core.v1.ServicePort].self, forKey: .ports)
		self.publishNotReadyAddresses = try container.decodeIfPresent(Bool.self, forKey: .publishNotReadyAddresses)
		self.selector = try container.decodeIfPresent([String: String].self, forKey: .selector)
		self.sessionAffinity = try container.decodeIfPresent(String.self, forKey: .sessionAffinity)
		self.sessionAffinityConfig = try container.decodeIfPresent(core.v1.SessionAffinityConfig.self, forKey: .sessionAffinityConfig)
		self.type = try container.decodeIfPresent(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(allocateLoadBalancerNodePorts, forKey: .allocateLoadBalancerNodePorts)
		try encodingContainer.encode(clusterIP, forKey: .clusterIP)
		try encodingContainer.encode(clusterIPs, forKey: .clusterIPs)
		try encodingContainer.encode(externalIPs, forKey: .externalIPs)
		try encodingContainer.encode(externalName, forKey: .externalName)
		try encodingContainer.encode(externalTrafficPolicy, forKey: .externalTrafficPolicy)
		try encodingContainer.encode(healthCheckNodePort, forKey: .healthCheckNodePort)
		try encodingContainer.encode(internalTrafficPolicy, forKey: .internalTrafficPolicy)
		try encodingContainer.encode(ipFamilies, forKey: .ipFamilies)
		try encodingContainer.encode(ipFamilyPolicy, forKey: .ipFamilyPolicy)
		try encodingContainer.encode(loadBalancerClass, forKey: .loadBalancerClass)
		try encodingContainer.encode(loadBalancerIP, forKey: .loadBalancerIP)
		try encodingContainer.encode(loadBalancerSourceRanges, forKey: .loadBalancerSourceRanges)
		try encodingContainer.encode(ports, forKey: .ports)
		try encodingContainer.encode(publishNotReadyAddresses, forKey: .publishNotReadyAddresses)
		try encodingContainer.encode(selector, forKey: .selector)
		try encodingContainer.encode(sessionAffinity, forKey: .sessionAffinity)
		try encodingContainer.encode(sessionAffinityConfig, forKey: .sessionAffinityConfig)
		try encodingContainer.encode(type, forKey: .type)
	}
}
