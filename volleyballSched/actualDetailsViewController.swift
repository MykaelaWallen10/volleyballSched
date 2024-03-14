//
//  actualDetailsViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/13/24.
//

import UIKit

class actualDetailsViewController: UIViewController {
    var incoming : oneTournament!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var aesLinkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        nameLabel.text = incoming.name
        dateLabel.text = incoming.date
        timeLabel.text = incoming.time
        aesLinkLabel.text = incoming.link

        // Do any additional setup after loading the view.
    }
    
}
