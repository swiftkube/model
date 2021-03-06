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

	static func configMap(name: String, _ block: ((inout core.v1.ConfigMap) -> Void)? = nil) -> core.v1.ConfigMap {
		build(core.v1.ConfigMap(metadata: meta.v1.ObjectMeta(name: name)), with: block ?? { _ in })
	}
}

public extension core.v1.ConfigMap {

	mutating func add(data: String, forKey key: String) {
		if self.data == nil {
			self.data = [:]
		}
		self.data?[key] = data
	}

	mutating func add(binaryData: Data, forKey key: String) {
		if self.binaryData == nil {
			self.binaryData = [:]
		}
		self.binaryData?[key] = binaryData.base64EncodedString()
	}

	mutating func add(file: URL, forKey key: String) throws {
		if data == nil {
			data = [:]
		}

		data?[key] = try String(contentsOf: file, encoding: .utf8)
	}

	mutating func add(binaryFile: URL, forKey key: String) throws {
		if binaryData == nil {
			binaryData = [:]
		}
		binaryData?[key] = try Data(contentsOf: binaryFile).base64EncodedString()
	}
}
