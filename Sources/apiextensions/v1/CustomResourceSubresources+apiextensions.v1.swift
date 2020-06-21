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

public extension apiextensions.v1 {

	///
	/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
	///
	struct CustomResourceSubresources: KubernetesResource, Codable {
	
		///
		/// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
		///
		var scale: apiextensions.v1.CustomResourceSubresourceScale?
	
		///
		/// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
		///
		var status: apiextensions.v1.CustomResourceSubresourceStatus?
	
	}
}

