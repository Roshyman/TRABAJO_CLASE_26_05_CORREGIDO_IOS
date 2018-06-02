//
//  Convertidor.swift
//  cocoaEjemploV2
//
//  Created by Ronald Murillo Solano on 27/5/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation
class Convertidor{
    func convertToObject(data: Data) -> Any? {
        
        let json = try? JSONSerialization.jsonObject(with: data, options: [])
        return json
    }
}
