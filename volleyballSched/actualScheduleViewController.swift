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
        print("\(JoinViewController.counting) the count variable ")
       // print("\(EachGroupsTournaments.groupsTourney[JoinViewController.counting].manyTournaments.count + 1)  the amount of rows its supposed to show ")
        
        return EachGroupsTournaments.groupsTourney[JoinViewController.counting].count
        //JoinViewController.counting
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        
        cell.textLabel?.text =""\(EachGroupsTournaments.groupsTourney[JoinViewController.counting].)
        
       // "\(EachGroupsTournaments.groupsTourney[JoinViewController.counting].manyTournaments[indexPath.row].name)"
               return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        
        selectedTournament1 = EachGroupsTournaments.groupsTourney[JoinViewController.counting].manyTournaments[indexPath.row]
        
        performSegue(withIdentifier: "toDetailPageFr", sender: nil)
        
        
        
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! actualDetailsViewController
        nvc.incoming = selectedTournament1
        
    }

    

    
    
}
