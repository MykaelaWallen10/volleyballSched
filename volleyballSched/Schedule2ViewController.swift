//
//  Schedule2ViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/11/24.
//

import UIKit

class Schedule2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Tournaments.manyTournaments.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "\(Tournaments.manyTournaments[indexPath.row].name)"
               return cell
    }
    



}
