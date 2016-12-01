//
//  NewViewController.swift
//  TableView
//
//  Created by Aluno on 30/11/16.
//  Copyright © 2016 Gustavo Reichelt Emmel. All rights reserved.
//

import UIKit

class NewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var listaCidade = [Cidade]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rs = Estado()
        rs.nome = "Rio Grande do Sul"
        rs.sigla = "RS"
        
        let poa = Cidade()
        poa.nome = "Porto Alegre"
        poa.estado = rs
        
        let viamao = Cidade()
        viamao.nome = "Viamao"
        viamao.estado = rs
        
        let canoas = Cidade()
        canoas.nome = "Canoas"
        canoas.estado = rs
        
        listaCidade.append(poa)
        listaCidade.append(viamao)
        listaCidade.append(canoas)
  
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var cityTable: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listaCidade.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celteste", for: indexPath) as! TableViewCell
        
        cell.lblCidade.text = self.listaCidade[indexPath.row].nome
        cell.lblUF.text = self.listaCidade[indexPath.row].estado!.nome
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "citysegue", sender: indexPath)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "citysegue"
        {
            guard let index : NSIndexPath = sender as? NSIndexPath else {return}
            
            if let destinationVC = segue.destination as? CityDetailsViewController{
                destinationVC.cidadeAux = self.listaCidade[index.row]
            }
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
