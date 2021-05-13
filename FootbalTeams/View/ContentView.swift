//
//  ContentView.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        TabView {
            NavigationView {
                TeamListView()
                    .navigationBarColor(backgroundColor: .white, tintColor: .black)
            }
            .tabItem {
                Image(systemName: "sportscourt")
                Text("Clubs")
            }
            NavigationView {
                AboutView()
                    .navigationBarColor(backgroundColor: .white, tintColor: .black)
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("About")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
