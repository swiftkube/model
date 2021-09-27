  ////
  //// Copyright 2020 Swiftkube Project
  ////
  //// Licensed under the Apache License, Version 2.0 (the "License");
  //// you may not use this file except in compliance with the License.
  //// You may obtain a copy of the License at
  ////
  //// http://www.apache.org/licenses/LICENSE-2.0
  ////
  //// Unless required by applicable law or agreed to in writing, software
  //// distributed under the License is distributed on an "AS IS" BASIS,
  //// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  //// See the License for the specific language governing permissions and
  //// limitations under the License.
  ////

import Foundation

public struct GroupVersionKind: ExpressibleByStringLiteral {
  public let group: String
  public let version: String
  public let kind: String

  public init(stringLiteral value: String) {
    let parts = value.lowercased().split(separator: "/")

    switch parts.count {
    case 1:
      self.group = "core"
      self.version = "v1"
      self.kind = String(parts[0])
    case 2:
      self.group = "core"
      self.version = String(parts[0])
      self.kind = String(parts[1])
    case 3:
      self.group = String(parts[0])
      self.version = String(parts[1])
      self.kind = String(parts[2])
    default:
      fatalError("Unknown value")
    }
  }

  public var apiVersion: String {
    (group == "core" ? "" : "\(group)/") + version
  }
}

extension GroupVersionKind: Equatable {
  public static func == (lhs: Self, rhs: Self) -> Bool {
    (lhs.group == rhs.group) && (lhs.version == rhs.version) && (lhs.kind == rhs.kind)
  }
}
