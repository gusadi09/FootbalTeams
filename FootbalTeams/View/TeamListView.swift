//
//  TeamListView.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import SwiftUI

struct TeamListView: View {
    
    @ObservedObject var apiService = ApiService()
    @State var showContent = false
    @Environment(\.viewController) private var viewControllerHolder: ViewControllerHolder
    
    private var viewController: UIViewController? {
        self.viewControllerHolder.value
    }
    
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(apiService.dataTotal?.teams ?? [], id: \.id) { item in
                    
                    TeamsCell(title: item.shortName, subtitle: item.name, imageUrl: URL(string: item.crestUrl)!)
                        .padding(.horizontal, 20)
                        .padding(.top)
                        .foregroundColor(.black)
                        .onTapGesture {
                            self.viewController?.present(style: .formSheet) {
                                DetailTeamsView(imageUrl: URL(string: item.crestUrl)!, name: item.name, shortName: item.shortName, clubColors: item.clubColors, Venue: item.venue, address: item.address)
                            }
                        }
                }
            }
            
            if (apiService.isLoading) {
                VStack {
                    Indicator()
                    Text("Loading...")
                }
            }
        }
        .navigationTitle("Clubs")
    }
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}


