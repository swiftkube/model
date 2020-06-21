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
	/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
	///
	struct PersistentVolumeClaimStatus: KubernetesResource, Codable {
	
		///
		/// AccessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
		///
		var accessModes: [String]?
	
		///
		/// Represents the actual resources of the underlying volume.
		///
		var capacity: [String: Quantity]?
	
		///
		/// Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
		///
		var conditions: [core.v1.PersistentVolumeClaimCondition]?
	
		///
		/// Phase represents the current phase of PersistentVolumeClaim.
		///
		var phase: String?
	
	}
}

