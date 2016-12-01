//
//  CityDetailsViewController.swift
//  TableView
//
//  Created by Aluno on 01/12/16.
//  Copyright © 2016 Gustavo Reichelt Emmel. All rights reserved.
//

import UIKit

class CityDetailsViewController: UIViewController {

    var cidadeAux = Cidade()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cidade.text = cidadeAux.nome
        estado.text = cidadeAux.estado?.nome
        uf.text     = cidadeAux.estado?.sigla
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var cidade: UILabel!

    @IBOutlet weak var estado: UILabel!
    
    @IBOutlet weak var uf: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
