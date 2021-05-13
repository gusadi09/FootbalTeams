//
//  TeamsCell.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import SwiftUI

struct TeamsCell: View {
    var title: String = "Test"
    var subtitle: String = "Test"
    var imageUrl: URL = URL(string: "http://upload.wikimedia.org/wikipedia/de/a/a3/Stoke_City.svg")!
    
    var body: some View {
        HStack(spacing: 20) {
            SVGView(url: imageUrl)
                .frame(width: 75, height: 75)
            
            VStack(alignment: .leading, spacing: 15) {
                Text(title).font(.title).bold()
                Text(subtitle).font(.system(size: 20))
            }
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 15, height: 30)
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.25), radius: 10, x: 0.0, y: 4)
    }
}

struct TeamsCell_Previews: PreviewProvider {
    static var previews: some View {
        TeamsCell()
    }
}
