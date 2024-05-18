//
//  AirlineInfo.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 18.05.24.
//

import Foundation

struct AirlineInfo: Decodable {
    let name: String?
    let iata: String?
    
    // exampe object for preview (Lusthansa)
    static let ex = AirlineInfo(name: "Lufthansa", iata: "LH")
}
