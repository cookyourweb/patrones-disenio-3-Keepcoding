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
        
        let myToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IjdENjY1Njk0LTQxMzItNEIzOC1CRkVCLTRCRTU1QUY4MzRDMyIsImVtYWlsIjoidmVyc2VycGVyQGhvdG1haWwuY29tIiwiZXhwaXJhdGlvbiI6NjQwOTIyMTEyMDB9.WrC2Gtv1XuQTqOhAjD50PLklpDUUBYsVnk7UsozazpM"
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.getHeroes { [weak self] heroes, error in
            self?.updateUI?(heroes)
        }
        
    }
    
    
    
}



