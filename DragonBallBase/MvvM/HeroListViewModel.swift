//
//  HeroListViewModel.swift
//  DragonBallBase
//
//  Created by vero on 16/1/23.
//

import Foundation

class HeroListViewModel: NSObject {
    
    override init() {
        
    }
    
    var updateUI: ((_ heroes: [HeroModel]) -> Void)?

    func fetchData() {
        
        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJleHBpcmF0aW9uIjo2NDA5MjIxMTIwMCwiZW1haWwiOiJ2ZXJzZXJwZXJAaG90bWFpbC5jb20iLCJpZGVudGlmeSI6IjdENjY1Njk0LTQxMzItNEIzOC1CRkVCLTRCRTU1QUY4MzRDMyJ9.cFZddJj9LrdKylWE5tw3dSjaSvCa5DomqCcu7W6IZcs"
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.getHeroes { [weak self] heroes, error in
            self?.updateUI?(heroes)
        }
        
    }
    
    //    func login() {
    //        // verserper@hotmail.com / Qwe123!
    //
    //        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJleHBpcmF0aW9uIjo2NDA5MjIxMTIwMCwiZW1haWwiOiJ2ZXJzZXJwZXJAaG90bWFpbC5jb20iLCJpZGVudGlmeSI6IjdENjY1Njk0LTQxMzItNEIzOC1CRkVCLTRCRTU1QUY4MzRDMyJ9.cFZddJj9LrdKylWE5tw3dSjaSvCa5DomqCcu7W6IZcs"
    //
    //        let apiClient = ApiClient(token: myToken)
    //
    //        apiClient.login(user: <#T##String#>, password: <#T##String#>, completion: <#T##(String?, Error?) -> Void#>)
    //        }
    //    }
    
}



