//
//  ApiService.swift
//  FootbalTeams
//
//  Created by Gus Adi on 13/05/21.
//

import Foundation
import SwiftUI
import Combine

class ApiService: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    
    @Published var dataTotal: TeamsList? {
        willSet {
            objectWillChange.send()
        }
    }
    
    @Published var isLoading = true
    
    init() {
        guard let url = URL(string: "https://api.football-data.org/v2/teams/") else {
            fatalError("Invalid URL")
        }
        
        let headers = "4dd49b1c31df456dbadbbfc77b4fd115"
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.setValue(headers, forHTTPHeaderField: "X-Auth-Token")
        
        URLSession(configuration: .default).dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(TeamsList.self, from: data)
            
            if let result = result {
                
                self.isLoading = false
                
                DispatchQueue.main.async {
                    self.dataTotal = result
                }
            }
        }.resume()
    }
}
