//
//  ViewController2.swift
//  Tabs
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    
    let restaurantes : [Restaurante] = [Restaurante(nombre: "The Stratosphere Restaurant", descripcion: "Have some drinks in the sky", imagenLista : UIImage(named: "stratophere")!, imagenDetalle : UIImage(named: "stratophere")!),
                                        
                                        Restaurante(nombre: "Gordon Ramsey Restaurant", descripcion: "Have some angry god damn food", imagenLista : UIImage(named: "gordon")!, imagenDetalle : UIImage(named: "gordon")!),
                                        
                                        Restaurante(nombre: "Bazaar Meat", descripcion: "Dedicated to the bounty of the earth", imagenLista : UIImage(named: "bazaar")!, imagenDetalle : UIImage(named: "bazaar")!),
                                        
                                        Restaurante(nombre: "Carnevino", descripcion: "The name of Mario Batali and Joe Bastianich’s Italian-influenced steakhouse says it all.", imagenLista : UIImage(named: "carnevino")!, imagenDetalle : UIImage(named: "carnevino")!),
                                        
                                        Restaurante(nombre: "Twist", descripcion: "Twist is breathtaking. There’s the airy dining room, with its glass orb chandeliers and serene decor.", imagenLista : UIImage(named: "twist")!, imagenDetalle : UIImage(named: "twist")!),]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda2 = tableView.dequeueReusableCell(withIdentifier: "cellRestaurante") as? CeldaRestaurante
        celda2?.lblNombre.text = restaurantes[indexPath.row].nombre
        
        celda2?.imgRestaurant.image = restaurantes[indexPath.row].imagenLista
        
        return celda2!
    }
    
    //Aqui se establece el tamaño de las celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124.5
        
    }
    
    //Aquí se establece el titulo del table view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Restaurants"
        
        
    }
    
    
    
    
    @IBOutlet weak var tbRestaurantes: UITableView!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if segue.identifier == "goToDetalleRestaurante"{
            let destino = segue.destination as! DetalleRestauranteController
            
            destino.restaurante = restaurantes[(tbRestaurantes.indexPathForSelectedRow?.row)!]
            
        //}
    }
    
}

