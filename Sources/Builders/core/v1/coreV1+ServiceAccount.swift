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

public extension sk {

	static func serviceAccount(_ block: (inout core.v1.ServiceAccount) -> Void) -> core.v1.ServiceAccount {
		return build(core.v1.ServiceAccount(), with: block)
	}
}

public extension core.v1.ServiceAccount {

	mutating func use(imagePullSecret name: String) {
		if self.imagePullSecrets == nil {
			self.imagePullSecrets = []
		}
		self.imagePullSecrets?.append(sk.localObjectReference(name: name))
	}

	mutating func use(secret name: String, namespace: String? = nil) {
		if self.secrets == nil {
			self.secrets = []
		}
		self.secrets?.append(sk.objectReference(apiVersion: .coreV1, kind: "Secret") {
			$0.namespace = namespace ?? self.metadata?.namespace
			$0.name = name
		})
	}
}
