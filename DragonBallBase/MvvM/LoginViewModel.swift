//
//  LoginViewModel.swift
//  DragonBallBase
//
//  Created by vero on 18/1/23.
//

import Foundation


class LoginViewModel: NSObject {
    
    
    var updateLogin: ((_ token: String)->Void)?
    
    override init() {
        
    }
    
    
    func fetchLogin(email: String, password: String){
        
        let email: String? = email
        let password: String? = password
        
        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IjdENjY1Njk0LTQxMzItNEIzOC1CRkVCLTRCRTU1QUY4MzRDMyIsImVtYWlsIjoidmVyc2VycGVyQGhvdG1haWwuY29tIiwiZXhwaXJhdGlvbiI6NjQwOTIyMTEyMDB9.igf0QQ8a2ZboU0cfFOElIMMGcsJDWMaA_Mtjuf31hw0"
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.login(user: email ?? "verserper@hotmail.com", password: password ?? "Qwe123!") { loginToken, error in
            
            debugPrint("PMG: \(loginToken ?? "No login")")
            
            debugPrint("PMG:", error ?? "No error")
            
            self.updateLogin?(loginToken ?? "Email or password are not correct")
        }
    }
}

