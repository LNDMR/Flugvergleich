//
//  FlightResultsView.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import SwiftUI

struct FlightResultsView: View {
    
    // dependency injection
    let departure: String
    let arrival: String
    let departureDate: Date
    
    @EnvironmentObject var viewModel: FlightSearchViewModel
    
    
    var body: some View {
        List {
            ForEach(viewModel.repository.flights, id: \.self.id) { flight in
                NavigationLink(destination: FlightDetailView(flight: flight)) {
                    FlightRowView(flight: flight)
                }
            }
        }
        .onAppear{
            viewModel.searchFlights(departure: departure, arrival: arrival, departureDate: departureDate)
        }
        .navigationTitle("Suchergebnisse")
    }
}

#Preview {
    FlightResultsView(departure: "MUC", arrival: "BER", departureDate: Date()).environmentObject(FlightSearchViewModel())
}
