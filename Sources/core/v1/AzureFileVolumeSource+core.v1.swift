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
	/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
	///
	struct AzureFileVolumeSource: KubernetesResource, Codable {
	
		///
		/// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		var readOnly: Bool?
	
		///
		/// the name of secret that contains Azure Storage Account Name and Key
		///
		var secretName: String
	
		///
		/// Share Name
		///
		var shareName: String
	
	}
}

