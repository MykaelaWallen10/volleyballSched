//
//  editingViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/11/24.
//
import UIKit

class oneTournament{
   
    var name : String
    var date : String
    var time : String
    var link : String
    
    init(name: String, date: String, time: String, link: String) {
        self.name = name
        self.date = date
        self.time = time
        self.link = link
    }
    
}

class Tournaments{
    static var manyTournaments = [oneTournament]()
    
    
}




class editingViewController: UIViewController {
    
    @IBOutlet weak var tourneyNametextfeild: UITextField!
    
    @IBOutlet weak var dateTextFeild: UITextField!
    
    @IBOutlet weak var timeTextFeild: UITextField!
    
    @IBOutlet weak var aesLinktextFeild: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tournamentInfoAction(_ sender: UIButton) {
        
        var nameText = tourneyNametextfeild.text!
        var dateText = dateTextFeild.text!
        var timetext = timeTextFeild.text!
        var aesText = aesLinktextFeild.text!
        
        var theTournament = oneTournament(name: nameText, date: dateText, time: timetext, link: aesText)
        
        Tournaments.manyTournaments.append(theTournament)
        
        
        tourneyNametextfeild.text = ""
        dateTextFeild.text = ""
        timeTextFeild.text = ""
        aesLinktextFeild.text = ""
        
    }
    
    
    
 
    @IBAction func toScheduleAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toTableViewScreen", sender: nil)
        
        
        
    }
    
    
    
}
