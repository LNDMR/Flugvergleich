//
//  FlightInfo.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 18.05.24.
//

import Foundation

struct FlightInfo: Decodable {
    let number: String?
    
    // exampe object for preview
    static let ex = FlightInfo(number: "123")
}
