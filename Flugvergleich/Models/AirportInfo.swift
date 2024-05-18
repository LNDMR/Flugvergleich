//
//  AirportInfo.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 18.05.24.
//

import Foundation

struct AirportInfo: Decodable {
    let iata: String?
    
    // exampe objects for preview (Berlin & Madrid)
    static let ex = AirportInfo(iata: "BER")
    static let ex2 = AirportInfo(iata: "MAD")

}
