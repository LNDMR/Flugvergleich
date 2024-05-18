//
//  FlightSearchViewModel.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import Foundation

class FlightSearchViewModel : ObservableObject {
    
    @Published var intDeparture = ""
    @Published var intArrival = ""
    @Published var intDepartureDate = Date()
    @Published var flights: [Flight] = []
    
    var repository = FlightsRepository()
    
    
    func searchFlights(departure: String, arrival: String, departureDate: Date) {
        
        repository.fetchFlights()
        // print("flights 1: \(flights[0].arrival?.iata ?? "leer")")
        //print("repo:flights 1: \(repository.flights[0].arrival?.iata ?? "leer")")
        self.flights = self.repository.flights
        //print("flights 2: \(flights[0].arrival?.iata ?? "leer")")
    }
    
    
    
    
}
