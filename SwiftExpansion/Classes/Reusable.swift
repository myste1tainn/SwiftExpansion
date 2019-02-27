//
// Created by Arnon Keereena on 2019-02-27.
//

import Foundation

public protocol Reusable {
  static var reuseID: String {get}
}

extension Reusable {
  public static var reuseID: String {
    return String(describing: self)
  }
}

