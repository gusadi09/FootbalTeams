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
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(apiService.dataTotal?.teams ?? [], id: \.id) { item in
                        Button(action: {
                            self.showContent.toggle()
                        }, label: {
                            TeamsCell(title: item.shortName, subtitle: item.name, imageUrl: URL(string: item.crestUrl)!)
                                .padding(20)
                                .sheet(isPresented: self.$showContent, content: {
                                    DetailTeamsView()
                                })
                        })
                        .foregroundColor(.black)
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
}

struct Indicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let indi = UIActivityIndicatorView(style: .large)
        
        return indi
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}


