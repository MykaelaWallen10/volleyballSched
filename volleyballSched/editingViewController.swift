//
//  editingViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/11/24.
//
import UIKit


class EachGroupsTournaments{
   static var groupsTourney = [Tournaments]()
    static var nameAndPassDic = [String: String]()
    
}

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

    var manyTournaments : [oneTournament]
    
    init(manyTournaments: [oneTournament]) {
        self.manyTournaments = manyTournaments
    }
    
}






class editingViewController: UIViewController {
    
   
    

    @IBOutlet weak var tourneyNametextfeild: UITextField!
    
    @IBOutlet weak var groupName: UITextField!
    
    @IBOutlet weak var passwordTextfeild: UITextField!
    
    @IBOutlet weak var dateTextFeild: UITextField!
    
    @IBOutlet weak var timeTextFeild: UITextField!
    
    @IBOutlet weak var aesLinktextFeild: UITextField!
     static var theTeamsTourneyArray = [oneTournament]()
    
  //  static var theTeamsTournaments = [Tournaments]()
    
  // static var theTeamsTournaments = Tournaments(manyTournaments: editingViewController.theTeamsTourneyArray)

    override func viewDidLoad() {
        super.viewDidLoad()
        print("clearing now")
        editingViewController.theTeamsTourneyArray = [oneTournament]()
       
        // Do any additional setup after loading the view.
    }
 

    @IBAction func tournamentInfoAction(_ sender: UIButton) {
        
        
        let nameText = tourneyNametextfeild.text!
        let dateText = dateTextFeild.text!
        let timetext = timeTextFeild.text!
        let aesText = aesLinktextFeild.text!
        
       
        
        var theTournament = oneTournament(name: nameText, date: dateText, time: timetext, link: aesText)
        
       
        editingViewController.theTeamsTourneyArray.append(theTournament)
        tourneyNametextfeild.text = ""
        dateTextFeild.text = ""
        timeTextFeild.text = ""
        aesLinktextFeild.text = ""
        
        //password stuff
        
        EachGroupsTournaments.nameAndPassDic[groupName.text!] = passwordTextfeild.text!
        
    
  
        print(EachGroupsTournaments.nameAndPassDic)
        print("password saved into class")
    
        
    }
    
    

    @IBAction func toScheduleAction(_ sender: UIButton) {
        
        
        var theTeamsTournaments = Tournaments(manyTournaments: editingViewController.theTeamsTourneyArray)
        
        EachGroupsTournaments.groupsTourney.append(theTeamsTournaments)
        
        

  performSegue(withIdentifier: "toTableViewScreen", sender: nil)
        
        
        
    }
    
    
    
}
