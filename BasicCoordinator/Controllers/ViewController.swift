//
//  ViewController.swift
//  BasicCoordinator
//
//  Created by Glenn Posadas on 4/12/21.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

  weak var coordinator: AppCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
  }
  
  @IBAction func buyTapped(_ sender: Any) {
    coordinator?.buySubscription()
  }
  
  @IBAction func createAccountTapped(_ sender: Any) {
    coordinator?.createAccount()
  }
}

