//
//  ViewController.swift
//  Messenger
//
//  Created by Octav Radulian on 13.01.2021.
//

//1 check if the user is signed in based on some user defaults or guide to resgistration, this is the first view controller

// app lifecicle
// view lifecicle



import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    
    

}

