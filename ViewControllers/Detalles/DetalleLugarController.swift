//
//  DetalleLugarController.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class DetalleLugarController : UIViewController
{
    var lugar : Lugar?
    
    @IBOutlet weak var txtLugar: UILabel!
    @IBOutlet weak var imgDetalleLugar: UIImageView!
    @IBOutlet weak var txtDescripción: UILabel!
    
    
    
    
    
    override func viewDidLoad()
    {
        imgDetalleLugar.image = lugar?.imagenDetalle
        
        txtLugar.text = lugar?.nombre
        
        txtDescripción.text = lugar?.descripcion
        
        
    }
    
  }

