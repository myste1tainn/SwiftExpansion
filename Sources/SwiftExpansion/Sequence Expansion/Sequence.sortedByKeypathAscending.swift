//
// Created by Arnon Keereena on 2019-09-08.
//

import Foundation

extension Sequence {
  public func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>, ascending: Bool) -> [Element] {
    return sorted {
      if ascending {
        return $0[keyPath: keyPath] < $1[keyPath: keyPath]
      } else {
        return $0[keyPath: keyPath] > $1[keyPath: keyPath]
      }
    }
  }
  
  public func sorted<T: Comparable>(by keyPath: KeyPath<Element, T?>, ascending: Bool) -> [Element] {
    return sorted {
      guard let left = $0[keyPath: keyPath],
            let right = $1[keyPath: keyPath] else {
        return false
      }
      if ascending {
        return left < right
      } else {
        return left > right
      }
    }
  }
}
