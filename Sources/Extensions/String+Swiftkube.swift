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

internal extension String {

	/// A naive plural name implementation to convert Kubernetes resource kinds into their plural form.
	///
	/// This simply does the follwing for the lowercased string:
	/// - Add `s` for nouns not ending with `s`, e.g. `DaemonSet` becomes `daemonsets`
	/// - Add `es` for nouns ending with `s`, e.g. `Ingress` becomes `ingresses`
	var pluralName: String {
		let lowercase = self.lowercased()
		let pluralSuffix = lowercase.hasSuffix("s") ? "es" : "s"
		return lowercase + pluralSuffix
	}

	/// Removes the given suffix from this String.
	///
	/// If this string contains the given suffix, then it's deleted, otherwise the same string is returned.
	///
	/// - Parameter suffix: the suffix to delete.
	func deletingSuffix(_ suffix: String) -> String {
		guard hasSuffix(suffix) else {
			return self
		}
		return String(dropLast(suffix.count))
	}
}
