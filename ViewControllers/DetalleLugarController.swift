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
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let lugarActual = lugar
        {
            self.title = lugarActual.nombre
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetalleLugar" {
            let destino = segue.destination as? DetalleLugarController
            
            
            
        }
    }
  }

