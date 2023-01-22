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
        let myToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IjdENjY1Njk0LTQxMzItNEIzOC1CRkVCLTRCRTU1QUY4MzRDMyIsImVtYWlsIjoidmVyc2VycGVyQGhvdG1haWwuY29tIiwiZXhwaXJhdGlvbiI6NjQwOTIyMTEyMDB9.WrC2Gtv1XuQTqOhAjD50PLklpDUUBYsVnk7UsozazpM"
 
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
