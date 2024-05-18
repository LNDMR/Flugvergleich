//
//  FlightAPIResponse.swift
//  Flugvergleich
//
//  Created by Linda Kötter on 18.05.24.
//

import Foundation

struct FlightAPIResponse: Decodable {
    let data: [Flight]
}
