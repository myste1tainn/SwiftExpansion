//
// Created by Arnon Keereena on 2019-07-28.
//

import Foundation

extension Sequence {
  public func sliceGrouping(_ groupBy: @escaping (Element, Element) -> Bool) -> [[Element]] {
    var results = [[Element]]()
    forEach { target in
      let index = results.index {
        guard let target2 = $0.first else { return false }
        return groupBy(target, target2)
      }
      if let index = index {
        results[index].append(target)
      } else {
        results.append([target])
      }
    }
    return results
  }
  
  public func sliceGrouping<T: Equatable>(by keyPath: KeyPath<Element, T>) -> [[Element]] {
    return sliceGrouping { $0[keyPath: keyPath] == $1[keyPath: keyPath] }
  }
}
