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

class OneNameAndPassword {
     var groupNameClass : String
     var groupPasswordClass : String
    static var thisGroupsTournaments = Tournaments.self
    
    init(groupNameClass: String,
        groupPasswordClass: String) {
        self.groupNameClass = groupNameClass
        self.groupPasswordClass = groupPasswordClass
    }
}
class manyNameandPasswords{
    static var groupInfoClass = [OneNameAndPassword]()
}





class editingViewController: UIViewController {
    
    

    @IBOutlet weak var tourneyNametextfeild: UITextField!
    
    @IBOutlet weak var groupName: UITextField!
    
    @IBOutlet weak var passwordTextfeild: UITextField!
    
    @IBOutlet weak var dateTextFeild: UITextField!
    
    @IBOutlet weak var timeTextFeild: UITextField!
    
    @IBOutlet weak var aesLinktextFeild: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tournamentInfoAction(_ sender: UIButton) {
        
        let nameText = tourneyNametextfeild.text!
        let dateText = dateTextFeild.text!
        let timetext = timeTextFeild.text!
        let aesText = aesLinktextFeild.text!
        
        var theTeamsTourneyArray = [oneTournament]()
        
        var theTournament = oneTournament(name: nameText, date: dateText, time: timetext, link: aesText)
        theTeamsTourneyArray.append(theTournament)
        var theTeamsTournaments = Tournaments(manyTournaments: theTeamsTourneyArray)
        
        EachGroupsTournaments.groupsTourney.append(theTeamsTournaments)
        
        
        tourneyNametextfeild.text = ""
        dateTextFeild.text = ""
        timeTextFeild.text = ""
        aesLinktextFeild.text = ""
        
    }
    
    
    @IBAction func enterNamePass(_ sender: UIButton) {
        var groupInfo = OneNameAndPassword(groupNameClass: groupName.text!, groupPasswordClass: passwordTextfeild.text!)
        
        manyNameandPasswords.groupInfoClass.append(groupInfo)
        
        EachGroupsTournaments.nameAndPassDic.updateValue(groupName.text!, forKey: passwordTextfeild.text!)
        
       
        print("password saved into class")
        
    }
    
    
    
 
    @IBAction func toScheduleAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toTableViewScreen", sender: nil)
        
        
        
    }
    
    
    
}
