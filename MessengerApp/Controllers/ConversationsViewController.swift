//
//  ViewController.swift
//  MessengerApp
//
//  Created by IoanChatz on 12/1/23.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        if !isLoggedIn{
            let viewCon = LoginViewController()
            let nav = UINavigationController(rootViewController: viewCon)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
    }


}

