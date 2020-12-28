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

	static func secret(_ block: (inout core.v1.Secret) -> Void) -> core.v1.Secret {
		return build(core.v1.Secret(), with: block)
	}
}

public extension core.v1.Secret {

	mutating func add(data: String, forKey key: String) {
		if self.data == nil {
			self.data = [:]
		}
		self.data?[key] = Data(data.utf8).base64EncodedString()
	}

	mutating func add(file: URL, forKey key: String) throws {
		if self.data == nil {
			self.data = [:]
		}

		self.data?[key] = try Data(contentsOf: file).base64EncodedString()
	}
}
