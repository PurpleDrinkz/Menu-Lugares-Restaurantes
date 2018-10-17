//
//  Comentario.swift
//  Tabs
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class Comentario {
    
    var nombre : String
    var descripcion : String
    
    
    init() {
        nombre = ""
        descripcion = ""
        
    }
    
    init(nombre : String, descripcion : String)
    {
        self.nombre = nombre
        self.descripcion = descripcion
    }
    
    
    
}
