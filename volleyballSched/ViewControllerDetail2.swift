//
//  ViewControllerDetail2.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/12/24.
//

import UIKit

class ViewControllerDetail2: UIViewController {
    
    @IBOutlet weak var detailTableView: UILabel!
    
    @IBOutlet weak var tourneyNameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var incoming : oneTournament!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detailTableView.text = "\(incoming.link)"
        dateLabel.text = " Date: \(incoming.date)"
        timeLabel.text = " Time: \(incoming.time)"
        tourneyNameLabel.text = "\(incoming.name)"
        
        
        
    }
    
    
    


}
