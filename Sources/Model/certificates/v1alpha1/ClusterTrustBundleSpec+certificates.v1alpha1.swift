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
/// certificates.v1alpha1.ClusterTrustBundleSpec
///

import Foundation

// MARK: - certificates.v1alpha1.ClusterTrustBundleSpec

public extension certificates.v1alpha1 {

	///
	/// ClusterTrustBundleSpec contains the signer and trust anchors.
	///
	struct ClusterTrustBundleSpec: KubernetesResource {
		///
		/// signerName indicates the associated signer, if any.
		///
		/// In order to create or update a ClusterTrustBundle that sets signerName, you must have the following cluster-scoped permission: group=certificates.k8s.io resource=signers resourceName=<the signer name> verb=attest.
		///
		/// If signerName is not empty, then the ClusterTrustBundle object must be named with the signer name as a prefix (translating slashes to colons). For example, for the signer name `example.com/foo`, valid ClusterTrustBundle object names include `example.com:foo:abc` and `example.com:foo:v1`.
		///
		/// If signerName is empty, then the ClusterTrustBundle object's name must not have such a prefix.
		///
		/// List/watch requests for ClusterTrustBundles can filter on this field using a `spec.signerName=NAME` field selector.
		///
		public var signerName: String?
		///
		/// trustBundle contains the individual X.509 trust anchors for this bundle, as PEM bundle of PEM-wrapped, DER-formatted X.509 certificates.
		///
		/// The data must consist only of PEM certificate blocks that parse as valid X.509 certificates.  Each certificate must include a basic constraints extension with the CA bit set.  The API server will reject objects that contain duplicate certificates, or that use PEM block headers.
		///
		/// Users of ClusterTrustBundles, including Kubelet, are free to reorder and deduplicate certificate blocks in this file according to their own logic, as well as to drop PEM block headers and inter-block data.
		///
		public var trustBundle: String
		///
		/// Default memberwise initializer
		///
		public init(
			signerName: String? = nil,
			trustBundle: String
		) {
			self.signerName = signerName
			self.trustBundle = trustBundle
		}
	}
}

///
/// Codable conformance
///
public extension certificates.v1alpha1.ClusterTrustBundleSpec {

	private enum CodingKeys: String, CodingKey {

		case signerName = "signerName"
		case trustBundle = "trustBundle"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.signerName = try container.decodeIfPresent(String.self, forKey: .signerName)
		self.trustBundle = try container.decode(String.self, forKey: .trustBundle)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(signerName, forKey: .signerName)
		try encodingContainer.encode(trustBundle, forKey: .trustBundle)
	}
}
