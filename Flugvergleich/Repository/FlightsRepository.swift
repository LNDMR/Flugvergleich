//
//  FlightsRepository.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 17.05.24.
//

import Foundation

class FlightsRepository {
    
    private let apiKey = "41560b42a9dc2e425c6b4334b5470993"
    
    @Published var flights = [Flight]()
    
    func fetchFlights() {
        
        // SCHRITT 1: URL DEFINIEREN
        guard let url = URL(string: "http://api.aviationstack.com/v1/flights?access_key=\(apiKey)&limit=3") else {
            print("Error forming URL")
            return
        }
        
        // SCHRITT 2: URL SESSION & DATA TASK ANLEGEN
        let task = URLSession.shared.dataTask(with: url) { data, resCode, error in
            print(resCode as Any)
            guard let data = data, error == nil else {
                print(error as Any)
                return
            }
            print("\(data)")
            
            // SCHRITT 3: DATEN DECODEN
            do {
                let flightResponse = try JSONDecoder().decode(FlightAPIResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self.flights = flightResponse.data
                    print(self.flights[0].arrival!)
                }
            } catch {
                print("Decoding error: \(error)")
            }
        }
        // SCHRITT 4: API CALL STARTEN
        task.resume()
    }
}
