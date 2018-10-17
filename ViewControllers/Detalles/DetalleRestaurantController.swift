//
//  DetalleRestaurantController.swift
//  Tabs
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class DetalleRestauranteController : UIViewController
{
    var restaurante : Restaurante?
    
    
    @IBOutlet weak var imgRestaurant: UIImageView!
    @IBOutlet weak var txtTitulo: UILabel!
    @IBOutlet weak var txtDescripcion: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToComentarios"{
            let destino = segue.destination as! ViewControllerComentario
            
            destino.comentarios = Comentario[(tbComentarios.indexPathForSelectedRow?.row)!]
            
            //destino.comentario = comentarios[(tbComentarios.indexPathForSelectedRow?.row)!]
            
            
        }
    
        func viewDidLoad() {
        
        imgRestaurant.image = restaurante?.imagenDetalle
        txtTitulo.text = restaurante?.nombre
        txtDescripcion.text = restaurante?.descripcion
    }
}
    
}

