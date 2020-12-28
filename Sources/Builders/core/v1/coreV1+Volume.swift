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

import Foundation

public extension sk {

	static func volume(name: String, fromConfigMap configMap: core.v1.ConfigMap) -> core.v1.Volume {
		var volume = core.v1.Volume(name: name)
		volume.configMap = core.v1.ConfigMapVolumeSource(
			name: configMap.metadata?.name,
			optional: false
		)
		return volume
	}

	static func volume(name: String, from source: VolumeSource) -> core.v1.Volume {
		var volume = core.v1.Volume(name: name)

		switch source {
		case let .configMap(configMap):
			volume.configMap = core.v1.ConfigMapVolumeSource(
				name: configMap.metadata?.name,
				optional: false
			)
		case let .configMapName(name):
			volume.configMap = core.v1.ConfigMapVolumeSource(
				name: name,
				optional: false
			)
		case let .emptyDir(medium: medium, sizeLimit: sizeLimit):
			volume.emptyDir = core.v1.EmptyDirVolumeSource(
				medium: medium,
				sizeLimit: sizeLimit
			)
		case let .hostPath(path: path, type: type):
			volume.hostPath = core.v1.HostPathVolumeSource(
				path: path,
				type: type
			)
		case let .persistentVolumeClaim(claimName: name, readOnly: readOnly):
			volume.persistentVolumeClaim = core.v1.PersistentVolumeClaimVolumeSource(
				claimName: name,
				readOnly: readOnly
			)
		}

		return volume
	}
}

public enum VolumeSource {
	case configMap(core.v1.ConfigMap)
	case configMapName(String)
	case emptyDir(medium: String? = nil, sizeLimit: Quantity? = nil)
	case hostPath(path: String, type: String? = nil)
	case persistentVolumeClaim(claimName: String, readOnly: Bool? = nil)
}
