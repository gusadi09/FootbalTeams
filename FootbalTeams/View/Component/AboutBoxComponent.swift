//
//  AboutBoxComponent.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import SwiftUI

struct AboutBoxComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image("Untitled")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .clipped()
                .clipShape(Circle())
                .padding()
            
            Text("Agus Adi Pranata").font(.system(size: 35)).bold()
            Text("Universitas Telkom").font(.system(size: 20))
        }
        .padding(30)
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0.0, y: 4)
        
    }
}

struct AboutBoxComponent_Previews: PreviewProvider {
    static var previews: some View {
        AboutBoxComponent()
    }
}
