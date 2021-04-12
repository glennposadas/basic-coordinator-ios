//
//  Coordinator.swift
//  BasicCoordinator
//
//  Created by Glenn Posadas on 4/12/21.
//

import UIKit

protocol Coordinator: class {
  var children: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}
