//
//  ViewController.swift
//  MessengerApp
//
//  Created by IoanChatz on 12/1/23.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        DatabaseManager.shared.test()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
        
    }
    private func validateAuth(){
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let viewCon = LoginViewController()
            let nav = UINavigationController(rootViewController: viewCon)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
    }
}

