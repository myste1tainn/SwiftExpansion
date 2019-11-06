//
// Created by Arnon Keereena on 2019-08-03.
//

import Foundation

extension Sequence {
  public func map<Result>(_ keyPath: KeyPath<Element, Result>) -> [Result] {
    return map { $0[keyPath: keyPath] }
  }
  
  public func compactMap<Result>(_ keyPath: KeyPath<Element, Result?>) -> [Result] {
    return compactMap { $0[keyPath: keyPath] }
  }
}

extension Optional {
  public func flatMap<Result>(_ keyPath: KeyPath<Wrapped, Result>) -> Result? {
    return flatMap { $0[keyPath: keyPath] }
  }
}
