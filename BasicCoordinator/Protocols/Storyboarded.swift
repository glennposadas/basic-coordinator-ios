//
//  Storyboarded.swift
//  BasicCoordinator
//
//  Created by Glenn Posadas on 4/12/21.
//

import UIKit

protocol Storyboarded {
  static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  static func instantiate() -> Self {
    let id = String(describing: self)
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    return storyboard.instantiateViewController(identifier: id) as! Self
  }
}
