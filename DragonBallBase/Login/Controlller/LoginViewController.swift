//
//  LoginViewController.swift
//  DragonBallBase
//
//  Created by vero on 19/1/23.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {
    
    var viewModel: LoginViewModel?
    var loginButton: UIButton?
    var passwordInputField: UITextField?
    var emaiInputField: UITextField?
    var errorMessageLabelField: UILabel?
    var login: String?
    
    override func loadView() {
        
        let loginView = LoginView()
        
        loginButton = loginView.getLoginButtonView()
        emaiInputField = loginView.getEmailView()
        passwordInputField = loginView.getPasswordView()
        errorMessageLabelField = loginView.getMessageView()
        
        
        view = loginView
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            viewModel = LoginViewModel()
                    
            loginButton?.addTarget(self, action: #selector(didLoginTapped), for: .touchUpInside)
        }
        
        func setUpUpdateUI(){
            viewModel = LoginViewModel()
            
            viewModel?.updateLogin = { [weak self] login in
                
                DispatchQueue.main.async {
                self?.login = login
                self?.errorMessageLabelField?.text = login
                    
                }
            }
        }
            
        func getLogin(email: String, password: String){

            viewModel?.fetchLogin(email: email , password: password)
                
            }
                
        @objc func didLoginTapped(sender: UIButton!) {
                
            guard let email = emaiInputField?.text,
            !email.isEmpty else {
                print("Email is required")
             return
             }
            guard let password = passwordInputField?.text, !password.isEmpty else {
             print("Password is required")
             return
             }
            
            self.getLogin(email: email, password: password)
            setUpUpdateUI()
        }
        
    }
