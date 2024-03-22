//
//  JoinViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/13/24.
//

import UIKit

class JoinViewController: UIViewController {
    @IBOutlet weak var groupEntry2: UITextField!
    
    @IBOutlet weak var passwordyEntry2: UITextField!
   static var counting = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< EachGroupsTournaments.nameAndPass.count{
            print(EachGroupsTournaments.nameAndPass[i].name)
            print(EachGroupsTournaments.nameAndPass[i].password)
        }
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("settong the count to 0")
        JoinViewController.counting = 0
    }
 
    

    @IBAction func joinGroupAction(_ sender: Any) {
        
       
        
        
        for i in 0..<EachGroupsTournaments.nameAndPass.count{
            
            if((EachGroupsTournaments.nameAndPass[i].name == groupEntry2.text!)&&(EachGroupsTournaments.nameAndPass[i].password == passwordyEntry2.text!)){
                print("name correct and pass correct")
                
                JoinViewController.counting = i
                
                print(JoinViewController.counting)
                
                performSegue(withIdentifier: "toActualSchedule", sender: nil)
            }
            else{
              
                print("wrong!")
            }
            
          
        }
        
       
        
        
        
        

    }
    
}
