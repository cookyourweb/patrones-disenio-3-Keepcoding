//
//  LoginView.swift
//  DragonBallBase
//
//  Created by vero on 19/1/23.
//

import Foundation

import UIKit

class LoginView: UIView {
    
    let headerText = {
        let labelh1 = UILabel()
        labelh1.text = "Login"
        labelh1.textAlignment = .center
        labelh1.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        labelh1.translatesAutoresizingMaskIntoConstraints = false
        return labelh1
    }()
    
    let emaiInputField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordInputField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    let loginButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemCyan

        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let errorMessageLabelField = {
        let labelField = UILabel()
        labelField.textAlignment = .left
        labelField.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        labelField.numberOfLines = 0
        labelField.translatesAutoresizingMaskIntoConstraints = false
        return labelField
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func getLoginButtonView() -> UIButton{
                return loginButton
            }
          
        func getEmailView()-> UITextField{
            return emaiInputField
        }
        
        func getPasswordView()-> UITextField{
            return passwordInputField
        }
        
        func getMessageView()-> UILabel{
            return errorMessageLabelField
        }

        
        func setUpViews() {
         backgroundColor = .systemPink
//            backgroundColor = UIColor(patternImage: UIImage(named: "landscape.jpg")!)
            addSubview(headerText)
            addSubview(emaiInputField)
            addSubview(passwordInputField)
            addSubview(loginButton)
            addSubview(errorMessageLabelField)
            
            NSLayoutConstraint.activate([
                headerText.topAnchor.constraint(equalTo: topAnchor, constant: 120),
                headerText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
                headerText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
                headerText.heightAnchor.constraint(equalToConstant: 40),
                
                emaiInputField.topAnchor.constraint(equalTo: topAnchor, constant: 240),
                emaiInputField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
                emaiInputField.heightAnchor.constraint(equalToConstant: 40),
                emaiInputField.widthAnchor.constraint(equalToConstant: 200),
                
                passwordInputField.topAnchor.constraint(equalTo: topAnchor, constant: 300),
                passwordInputField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
                passwordInputField.heightAnchor.constraint(equalToConstant: 40),
                passwordInputField.widthAnchor.constraint(equalToConstant: 200),
                
                loginButton.topAnchor.constraint(equalTo: topAnchor, constant: 370),
                loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
                loginButton.heightAnchor.constraint(equalToConstant: 40),
                loginButton.widthAnchor.constraint(equalToConstant: 200),
                
                errorMessageLabelField.widthAnchor.constraint(equalToConstant: 20),
                errorMessageLabelField.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 80),
                errorMessageLabelField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
                errorMessageLabelField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
                errorMessageLabelField.heightAnchor.constraint(equalToConstant: 180),
                errorMessageLabelField.widthAnchor.constraint(equalToConstant: 20)

            ])
            
        }
    }
