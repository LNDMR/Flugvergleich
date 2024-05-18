//
//  Flight.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import Foundation

struct Flight: Identifiable, Decodable {
    
    let id = UUID()
    let flight_date: String?
    let departure: AirportInfo?
    let arrival: AirportInfo?
    let airline: AirlineInfo?
    let flight: FlightInfo?
    
    // Empty object
    static let ex = Flight(flight_date: "23.05.2024", departure: AirportInfo.ex, arrival: AirportInfo.ex2, airline: AirlineInfo.ex, flight: FlightInfo.ex)
}
