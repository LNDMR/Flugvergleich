//
//  ContentView.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isButtonClicked: Bool = false
    
    var body: some View {
        NavigationStack{
            Button("Flüge suchen"){
                isButtonClicked = true
            }
            .buttonStyle(.borderedProminent)
            .background(
                NavigationLink(destination: SearchView(), isActive: $isButtonClicked){
                    EmptyView()
                }.hidden()
            )
        }
    }
}

#Preview {
    ContentView()
}
