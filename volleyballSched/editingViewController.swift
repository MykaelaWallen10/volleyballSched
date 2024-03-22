//
//  editingViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/11/24.
//
import UIKit


class EachGroupsTournaments{
    static var groupsTourney = []
    static var nameAndPass = [info]()
    
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

    static var manyTournaments : [oneTournament]!
    
    init(manyTournaments: [oneTournament]) {
        Tournaments.manyTournaments = manyTournaments
    }
    
}

class info{
    var name : String
    var password : String
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
    
}

class editingViewController: UIViewController {
    
    static var singleTeamslistOfAllTournaments = [oneTournament]()
    @IBOutlet weak var tourneyNametextfeild: UITextField!
    
    @IBOutlet weak var groupName: UITextField!
    
    @IBOutlet weak var passwordTextfeild: UITextField!
    
    @IBOutlet weak var dateTextFeild: UITextField!
    
    @IBOutlet weak var timeTextFeild: UITextField!
    
    @IBOutlet weak var aesLinktextFeild: UITextField!
    static var theTeamsTourneyArray = [oneTournament]()
    
   // static var manyTournaments : [oneTournament]!
    
  //  static var theTeamsTournaments = [Tournaments]()

  // static var theTeamsTournaments = Tournaments(manyTournaments: editingViewController.theTeamsTourneyArray)

    override func viewDidLoad() {
        super.viewDidLoad()
        print("clearing array for test")
        editingViewController.theTeamsTourneyArray = [oneTournament]()
        print("clearing array for actual list")
        Tournaments.manyTournaments = [oneTournament]()
       
        // Do any additional setup after loading the view.
    }
 

    @IBAction func tournamentInfoAction(_ sender: UIButton) {
        
        
        let nameText = tourneyNametextfeild.text!
        let dateText = dateTextFeild.text!
        let timetext = timeTextFeild.text!
        let aesText = aesLinktextFeild.text!
        
       
        
        var theTournament = oneTournament(name: nameText, date: dateText, time: timetext, link: aesText)
        
       
        editingViewController.theTeamsTourneyArray.append(theTournament)
        
        
        editingViewController.singleTeamslistOfAllTournaments
        
        
        
        
        var singleTeamListOfAllTourneys = Tournaments(manyTournaments: editingViewController.theTeamsTourneyArray)
       // Tournaments.manyTournaments.append(theTournament)
       
        
        tourneyNametextfeild.text = ""
        dateTextFeild.text = ""
        timeTextFeild.text = ""
        aesLinktextFeild.text = ""
        
        
        
        
        
        
        
        
        
        //password stuff
        
        var nameAndPassword = info(name: groupName.text!, password: passwordTextfeild.text!)
        
        EachGroupsTournaments.nameAndPass.append(nameAndPassword)
        for i in 0 ..< EachGroupsTournaments.nameAndPass.count{
            print(EachGroupsTournaments.nameAndPass[i].name)
            print(EachGroupsTournaments.nameAndPass[i].password)
        }
  
        print("password saved into class")
    
        
    }
    
    

    @IBAction func toScheduleAction(_ sender: UIButton) {
        
        EachGroupsTournaments.groupsTourney.append()
        
        

  performSegue(withIdentifier: "toTableViewScreen", sender: nil)
        
        
        
    }
    
    
    
}
