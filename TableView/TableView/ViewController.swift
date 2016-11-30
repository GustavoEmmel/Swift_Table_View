//
//  ViewController.swift
//  TableView
//
//  Created by Aluno on 30/11/16.
//  Copyright © 2016 Gustavo Reichelt Emmel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var tableViewOutlet: UITableView!
    var cidades = ["canoas", "porto alegre", "caxias", "eldorado", "guaiba", "pelotas", "esteio", "novo hamburgo"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cidades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celteste", for: indexPath)
        
        cell.textLabel?.text = self.cidades[indexPath.row]
        
        return cell
    }
    
}

