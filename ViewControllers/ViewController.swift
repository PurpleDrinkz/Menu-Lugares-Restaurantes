//
//  ViewController.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    let lugares : [Lugar] = [Lugar(nombre: "The Strip", descripcion: "dfg", imagenLista : UIImage(named: "strip")!, imagenDetalle : UIImage(named: "strip")!),
                             Lugar(nombre: "Stratosphere", descripcion: "dfg", imagenLista : UIImage(named: "stratosphere")!, imagenDetalle : UIImage(named: "strip")!),
                             Lugar(nombre: "Fremont Street", descripcion: "dfg", imagenLista : UIImage(named: "fremont")!,imagenDetalle : UIImage(named: "strip")!),
                             Lugar(nombre: "Venetian Hotel", descripcion: "dfg", imagenLista : UIImage(named: "venetian")!, imagenDetalle : UIImage(named: "strip")!),
                             Lugar(nombre: "Bellagio Fountains", descripcion: "dfg", imagenLista : UIImage(named: "bellagio")!, imagenDetalle : UIImage(named: "strip")!)]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lugares.count
        
    }
                                
                                
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellLugar") as? CeldaLugar
        celda?.lblNombre.text = lugares[indexPath.row].nombre
        
        celda?.imgLugar.image = lugares[indexPath.row].imagenLista
        
        return celda!
    }
    
    //Aqui se establece el tamaño de las celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124.5
        
    }
    
    //Aquí se establece el titulo del table view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Places"
        
        
    }
    
    
    
    @IBOutlet weak var tbLugares: UITableView!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleLugar"{
            let destino = segue.destination as? DetalleLugarController
            
            destino?.lugar = lugares[(tbLugares.indexPathForSelectedRow?.row)!]
            
        }
    }

}

