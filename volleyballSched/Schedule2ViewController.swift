//
//  Schedule2ViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/11/24.
//

import UIKit

class Schedule2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    var selectedTournament : oneTournament!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
        editingViewController.theTeamsTourneyArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "\(editingViewController.theTeamsTourneyArray[indexPath.row].name)"
        
//        cell.textLabel?.text = "\(EachGroupsTournaments.groupsTourney[editingViewController.counting].manyTournaments[indexPath.row].name)"
               return cell
        
        //(Tournaments.manyTournaments[indexPath.row].name)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        
        selectedTournament = editingViewController.theTeamsTourneyArray[indexPath.row]
        
        /*EachGroupsTournaments.groupsTourney[editingViewController.counting].manyTournaments[indexPath.row-1]*/
        
        performSegue(withIdentifier: "toDetailPage", sender: nil)
        
        
        
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerDetail2
        nvc.incoming = selectedTournament
        
    }
    



}
