//
//  AboutView.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        VStack {
            AboutBoxComponent()
                .padding(.top, 35)
            Spacer()
        }
        .navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
