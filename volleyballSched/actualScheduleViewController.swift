//
//  actualScheduleViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/13/24.
//

import UIKit

class actualScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewOutletFr: UITableView!
    var selectedTournament1 : oneTournament!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutletFr.dataSource = self
        tableViewOutletFr.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OneNameAndPassword.thisGroupsTournaments.manyTournaments.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "\(OneNameAndPassword.thisGroupsTournaments.manyTournaments[indexPath.row].name)"
               return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        
        selectedTournament1 = OneNameAndPassword.thisGroupsTournaments.manyTournaments[indexPath.row]
        
        performSegue(withIdentifier: "toDetailPageFr", sender: nil)
        
        
        
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! actualDetailsViewController
        nvc.incoming = selectedTournament1
        
    }

    

    
    
}
