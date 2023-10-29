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
/// Kubernetes v1.28.3
/// core.v1.WindowsSecurityContextOptions
///

import Foundation

// MARK: - core.v1.WindowsSecurityContextOptions

public extension core.v1 {

	///
	/// WindowsSecurityContextOptions contain Windows-specific options and credentials.
	///
	struct WindowsSecurityContextOptions: KubernetesResource {
		///
		/// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
		///
		public var gmsaCredentialSpec: String?
		///
		/// GMSACredentialSpecName is the name of the GMSA credential spec to use.
		///
		public var gmsaCredentialSpecName: String?
		///
		/// HostProcess determines if a container should be run as a 'Host Process' container. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers). In addition, if HostProcess is true then HostNetwork must also be set to true.
		///
		public var hostProcess: Bool?
		///
		/// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsUserName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			gmsaCredentialSpec: String? = nil,
			gmsaCredentialSpecName: String? = nil,
			hostProcess: Bool? = nil,
			runAsUserName: String? = nil
		) {
			self.gmsaCredentialSpec = gmsaCredentialSpec
			self.gmsaCredentialSpecName = gmsaCredentialSpecName
			self.hostProcess = hostProcess
			self.runAsUserName = runAsUserName
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.WindowsSecurityContextOptions {

	private enum CodingKeys: String, CodingKey {

		case gmsaCredentialSpec = "gmsaCredentialSpec"
		case gmsaCredentialSpecName = "gmsaCredentialSpecName"
		case hostProcess = "hostProcess"
		case runAsUserName = "runAsUserName"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.gmsaCredentialSpec = try container.decodeIfPresent(String.self, forKey: .gmsaCredentialSpec)
		self.gmsaCredentialSpecName = try container.decodeIfPresent(String.self, forKey: .gmsaCredentialSpecName)
		self.hostProcess = try container.decodeIfPresent(Bool.self, forKey: .hostProcess)
		self.runAsUserName = try container.decodeIfPresent(String.self, forKey: .runAsUserName)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(gmsaCredentialSpec, forKey: .gmsaCredentialSpec)
		try encodingContainer.encode(gmsaCredentialSpecName, forKey: .gmsaCredentialSpecName)
		try encodingContainer.encode(hostProcess, forKey: .hostProcess)
		try encodingContainer.encode(runAsUserName, forKey: .runAsUserName)
	}
}
