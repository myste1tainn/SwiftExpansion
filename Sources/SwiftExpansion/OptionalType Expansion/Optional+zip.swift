//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation

extension Optional {
  public func zip<Another, T>(_ another: Another?, transform: (Wrapped, Another) -> T) -> T? {
    if let zipped = zip(another) {
      return transform(zipped.0, zipped.1)
    } else {
      return nil
    }
  }
  
  public func zip<Another>(_ another: Another?) -> (Wrapped, Another)? {
    if let wrapped = self, let another = another {
      return (wrapped, another)
    } else {
      return nil
    }
  }
}

