//
//  DetailTeamsView.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import SwiftUI

struct DetailTeamsView: View {
    var imageUrl: URL = URL(string: "https://upload.wikimedia.org/wikipedia/en/8/8c/Norwich_City.svg")!
    var name: String = "Test"
    var shortName: String = "Test"
    var clubColors: String = "Test"
    var Venue: String = "Test"
    var address: String = "Test"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                SVGView(url: imageUrl)
                    .frame(width: 150, height: 155, alignment: .center)
                    .padding(.top, 40)
                Text(name)
                    .font(.system(size: 30)).bold()
                    .padding(.top)
                    .padding(.horizontal, 30)
                Text(shortName)
                    .font(.system(size: 20))
                    .padding(.horizontal, 30)
                
                Spacer()
                BoxDetail(clubColors: self.clubColors, Venue: self.Venue, address: self.address)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 20)
            }
            .navigationTitle("Club Detail")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct DetailTeamsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTeamsView()
    }
}

struct BoxDetail: View {
    var clubColors: String = "Test"
    var Venue: String = "Test"
    var address: String = "Test"
    
    var body: some View {
        VStack {
            HStack {
                Text("Club Colors")
                    .font(.system(size: 17, weight: .bold))
                    .padding(.leading, 15)
                Spacer()
                
                Text(clubColors)
                    .font(.system(size: 17))
                    .padding(.trailing, 15)
                    .padding(.leading, 25)
            }
            .padding(.bottom, 25)
            .padding(.top, 30)
            
            HStack {
                Text("Venue")
                    .font(.system(size: 17, weight: .bold))
                    .padding(.leading, 15)
                Spacer()
                
                Text(Venue)
                    .font(.system(size: 17))
                    .padding(.trailing, 15)
                    .padding(.leading, 25)
            }
            .padding(.bottom, 25)
            
            HStack {
                Text("Address")
                    .font(.system(size: 17, weight: .bold))
                    .padding(.leading, 15)
                Spacer()
                
                Text(address)
                    .font(.system(size: 17))
                    .padding(.trailing, 15)
                    .padding(.leading, 25)
            }
            .padding(.bottom, 30)
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.15), radius: 10, x: 0.0, y: 4)
    }
}
