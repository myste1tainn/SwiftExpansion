//
// Created by Arnon Keereena on 2019-04-07.
//

import Foundation

extension Sequence {
  func filter<Another>(against another: [Another], where predicate: (Element, Another) -> Bool) -> [Element] {
    return filter { this in another.contains { that in predicate(this, that) } }
  }
}
