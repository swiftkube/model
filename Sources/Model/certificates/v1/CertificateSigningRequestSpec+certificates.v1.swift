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
/// certificates.v1.CertificateSigningRequestSpec
///

import Foundation

// MARK: - certificates.v1.CertificateSigningRequestSpec

public extension certificates.v1 {

	///
	/// CertificateSigningRequestSpec contains the certificate request.
	///
	struct CertificateSigningRequestSpec: KubernetesResource {
		///
		/// expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.
		///
		/// The v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this field as long as the requested duration is not greater than the maximum duration they will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller manager.
		///
		/// Certificate signers may not honor this field for various reasons:
		///
		///   1. Old signer that is unaware of the field (such as the in-tree
		///      implementations prior to v1.22)
		///   2. Signer whose configured maximum is shorter than the requested duration
		///   3. Signer whose configured minimum is longer than the requested duration
		///
		/// The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
		///
		public var expirationSeconds: Int32?
		///
		/// extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
		///
		public var extra: [String: [String]]?
		///
		/// groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
		///
		public var groups: [String]?
		///
		/// request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
		///
		public var request: String
		///
		/// signerName indicates the requested signer, and is a qualified name.
		///
		/// List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.
		///
		/// Well-known Kubernetes signers are:
		///  1. "kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.
		///   Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the "csrsigning" controller in kube-controller-manager.
		///  2. "kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.
		///   Requests for this signer can be auto-approved by the "csrapproving" controller in kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
		///  3. "kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.
		///   Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
		///
		/// More details are available at https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers
		///
		/// Custom signerNames can also be specified. The signer defines:
		///  1. Trust distribution: how trust (CA bundles) are distributed.
		///  2. Permitted subjects: and behavior when a disallowed subject is requested.
		///  3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
		///  4. Required, permitted, or forbidden key usages / extended key usages.
		///  5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.
		///  6. Whether or not requests for CA certificates are allowed.
		///
		public var signerName: String
		///
		/// uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
		///
		public var uid: String?
		///
		/// usages specifies a set of key usages requested in the issued certificate.
		///
		/// Requests for TLS client certificates typically request: "digital signature", "key encipherment", "client auth".
		///
		/// Requests for TLS serving certificates typically request: "key encipherment", "digital signature", "server auth".
		///
		/// Valid values are:
		///  "signing", "digital signature", "content commitment",
		///  "key encipherment", "key agreement", "data encipherment",
		///  "cert sign", "crl sign", "encipher only", "decipher only", "any",
		///  "server auth", "client auth",
		///  "code signing", "email protection", "s/mime",
		///  "ipsec end system", "ipsec tunnel", "ipsec user",
		///  "timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
		///
		public var usages: [String]?
		///
		/// username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
		///
		public var username: String?
		///
		/// Default memberwise initializer
		///
		public init(
			expirationSeconds: Int32? = nil,
			extra: [String: [String]]? = nil,
			groups: [String]? = nil,
			request: String,
			signerName: String,
			uid: String? = nil,
			usages: [String]? = nil,
			username: String? = nil
		) {
			self.expirationSeconds = expirationSeconds
			self.extra = extra
			self.groups = groups
			self.request = request
			self.signerName = signerName
			self.uid = uid
			self.usages = usages
			self.username = username
		}
	}
}

///
/// Codable conformance
///
public extension certificates.v1.CertificateSigningRequestSpec {

	private enum CodingKeys: String, CodingKey {

		case expirationSeconds = "expirationSeconds"
		case extra = "extra"
		case groups = "groups"
		case request = "request"
		case signerName = "signerName"
		case uid = "uid"
		case usages = "usages"
		case username = "username"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.expirationSeconds = try container.decodeIfPresent(Int32.self, forKey: .expirationSeconds)
		self.extra = try container.decodeIfPresent([String: [String]].self, forKey: .extra)
		self.groups = try container.decodeIfPresent([String].self, forKey: .groups)
		self.request = try container.decode(String.self, forKey: .request)
		self.signerName = try container.decode(String.self, forKey: .signerName)
		self.uid = try container.decodeIfPresent(String.self, forKey: .uid)
		self.usages = try container.decodeIfPresent([String].self, forKey: .usages)
		self.username = try container.decodeIfPresent(String.self, forKey: .username)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(expirationSeconds, forKey: .expirationSeconds)
		try encodingContainer.encode(extra, forKey: .extra)
		try encodingContainer.encode(groups, forKey: .groups)
		try encodingContainer.encode(request, forKey: .request)
		try encodingContainer.encode(signerName, forKey: .signerName)
		try encodingContainer.encode(uid, forKey: .uid)
		try encodingContainer.encode(usages, forKey: .usages)
		try encodingContainer.encode(username, forKey: .username)
	}
}
