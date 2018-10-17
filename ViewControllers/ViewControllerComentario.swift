//
//  ViewControllerComentario.swift
//  Tabs
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerComentario: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBAction func doTapSiguiente(_ sender: Any) {
        
        
    }
    
    
    let comentarios : [Comentario] = [Comentario(nombre: "George Lopez", descripcion: "Estoy muy decepcionado porque no habia tortillas de harina"),
                                      Comentario(nombre: "William Lawson", descripcion: "Amazing Food, will come back again later."),
                                      Comentario(nombre: "Alejandro Salomon", descripcion: "Nice and happy chill place for the family and friends.")]
                                      
                                        
                                      
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comentarios.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda3 = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as? ListaComentarioController
        celda3?.lblNombre.text = comentarios[indexPath.row].nombre
        celda3?.lblDescripcion.text = comentarios[indexPath.row].descripcion
        
        
        return celda3!
    }
    
    //Aqui se establece el tamaño de las celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124.5
        
    }
    
    //Aquí se establece el titulo del table view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Comments"
        
        
    }
    
    
    
    @IBOutlet weak var tbComentarios: UITableView!
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Prepare for segue
    
    }


