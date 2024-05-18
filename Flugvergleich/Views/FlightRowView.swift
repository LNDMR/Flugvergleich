//
//  FlightRowView.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import SwiftUI

struct FlightRowView: View {
    
    let flight: Flight
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("\(flight.departure?.iata ?? "No Departure") -> \(flight.arrival?.iata ?? "No Arrival")")
                .font(.headline)
            Text(flight.flight_date ?? "No Date").font(.subheadline)
            Text("Airline: \(flight.airline?.name ?? "No Airline")").font(.subheadline)
            Text("Flight Number: \(flight.airline?.iata ?? " ") \(flight.flight?.number ?? "na")").font(.subheadline)
        }
        .padding(10)
        
    }
}

#Preview {
    FlightRowView(flight: Flight.ex)
}
