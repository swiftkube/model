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

/// Represents SwiftkubeModel errors.
public enum SwiftkubeModelError: Error {
	/// Thrown when dealing with an unknown Kubernetes object, i.e. when a correspondinf `GroupVersionKind` cann't be determined.
	case unknownAPIObject(String)
	/// Thrown on decoding errors.
	case decodingError(String)
}
