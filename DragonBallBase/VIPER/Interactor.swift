//
//  Interactor.swift
//  DragonBallBase
//
//  Created by vero on 17/1/23.
//

import Foundation

// object
// protocol
// ref to presenter
// api calls

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getHeroes()
}

class HeroInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getHeroes() {
        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJleHBpcmF0aW9uIjo2NDA5MjIxMTIwMCwiZW1haWwiOiJ2ZXJzZXJwZXJAaG90bWFpbC5jb20iLCJpZGVudGlmeSI6IjdENjY1Njk0LTQxMzItNEIzOC1CRkVCLTRCRTU1QUY4MzRDMyJ9.cFZddJj9LrdKylWE5tw3dSjaSvCa5DomqCcu7W6IZcs"
 
        ApiClient(token: myToken).getHeroes { [weak self] heroes, error in
            if (error != nil) {
                self?.presenter?
                    .interactorDidFechHeroes(with: .failure(error!))
                
                return
            }
            
            self?.presenter?
                .interactorDidFechHeroes(with: .success(heroes))
        }
    }
    
    
}
