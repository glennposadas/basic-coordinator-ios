//
//  AppCoordinator.swift
//  BasicCoordinator
//
//  Created by Glenn Posadas on 4/12/21.
//

import UIKit

class AppCoordinator: Coordinator {
  var children = [Coordinator]()
  var navigationController: UINavigationController
  
  private init() { navigationController = UINavigationController() }
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = ViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  func buySubscription() {
    let vc = BuyViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  func createAccount() {
    let vc = CreateAccountViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
}
