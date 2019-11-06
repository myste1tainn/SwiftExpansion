//
// Created by Arnon Keereena on 2019-09-02.
//

import Foundation

extension Sequence {
  public mutating func mutableMap(_ transform: (inout Element) -> Void) -> [Element] {
    return map {
      var mutable = $0
      transform(&mutable)
      return mutable
    }
  }
}
