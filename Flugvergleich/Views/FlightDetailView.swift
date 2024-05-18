//
//  FlightDetailView.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import SwiftUI

struct FlightDetailView: View {
    
    let flight: Flight
  
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Flight Number: \(flight.airline?.iata ?? " ") \(flight.flight?.number ?? "na")")
                .font(.headline)
            Text("Abflug: \(flight.departure?.iata ?? "No Departure")")
            Text("Ankunft: \(flight.arrival?.iata ?? "No Arrival")")
            Text("Abflugzeit: \(flight.flight_date ?? "No Date")")
            Text("Ankunftszeit: \(flight.flight_date ?? "No Date")")
            Text("Preis: free for now")
            Text("Fluggesellschaft: \(flight.airline?.name ?? "No Airline")")
        }
        .padding()
        .navigationTitle("Flugdetails")
    }
}

#Preview {
    FlightDetailView(flight: Flight.ex)
}
