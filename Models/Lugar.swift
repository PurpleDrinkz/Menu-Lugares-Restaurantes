//
//  Places.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class Lugar {
    
    var nombre : String
    var descripcion : String
    var imagen : UIImage
    
    init() {
        nombre = ""
        descripcion = ""
        imagen = UIImage()
    }
    
    init(nombre : String, descripcion : String, imagen : UIImage)
    {
        self.nombre = nombre
        self.descripcion = descripcion
        self.imagen = imagen
        
        
    }
}
