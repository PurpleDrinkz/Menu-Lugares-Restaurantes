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
    var imagenLista : UIImage
    var imagenDetalle : UIImage
    
    init() {
        nombre = ""
        descripcion = ""
        imagenLista = UIImage()
        imagenDetalle = UIImage()
    }
    
    init(nombre : String, descripcion : String, imagenLista : UIImage, imagenDetalle : UIImage)
    {
        self.nombre = nombre
        self.descripcion = descripcion
        self.imagenLista = imagenLista
        self.imagenDetalle = imagenDetalle
        
        
    }
}
