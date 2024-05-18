//
//  SearchView.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var viewModel: FlightSearchViewModel = FlightSearchViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Abflughafen", text: $viewModel.intDeparture)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                TextField("Zielflughafen", text: $viewModel.intArrival)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                DatePicker("Abflugdatum", selection: $viewModel.intDepartureDate, displayedComponents: .date)
                    .padding()
                
                NavigationLink(destination: FlightResultsView(departure: viewModel.intDeparture, arrival: viewModel.intArrival, departureDate: viewModel.intDepartureDate).environmentObject(viewModel)) {
                    Text("Flüge suchen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    SearchView().environmentObject(FlightSearchViewModel())
}
