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

	static func deployment(name: String, _ block: (inout apps.v1.Deployment) -> Void) -> apps.v1.Deployment {
		return build(apps.v1.Deployment(metadata: meta.v1.ObjectMeta(name: name)), with: block)
	}

	static func deploymentSpec(_ block: (inout apps.v1.DeploymentSpec) -> Void) -> apps.v1.DeploymentSpec {
		return build(apps.v1.DeploymentSpec(selector: meta.v1.LabelSelector(), template: core.v1.PodTemplateSpec()), with: block)
	}
}
