//
//  ViewController.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    let lugares : [Lugar] = [Lugar(nombre: "The Strip", descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut lobortis ipsum. Quisque vitae auctor sem. Sed et iaculis mi. Morbi faucibus, elit sed consequat gravida, elit tortor laoreet mauris, non scelerisque odio ante ac nisl. Nullam vulputate ornare leo at tempor. ", imagen : UIImage(named: "strip")!)]
                            
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                                    return lugares.count
    }
                                
                                
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellLugar") as? CeldaLugar
        celda?.lblNombre.text = lugares[indexPath.row].nombre
        
        return celda!
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

