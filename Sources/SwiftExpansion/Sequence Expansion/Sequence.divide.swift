//
// Created by Arnon Keereena on 5/8/17.
// Copyright (c) 2017 Arnon Keereena. All rights reserved.
//

import Foundation

extension Sequence {
  
  public func divide(where block: @escaping (Element) -> Bool) -> ([Element], [Element]) {
    let matches = filter { block($0) }
    let unmatches = filter { !block($0) }
    return (matches, unmatches)
  }
  
}

