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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    

    @IBAction func joinGroupAction(_ sender: Any) {
        
        
        for (key, value) in EachGroupsTournaments.nameAndPassDic{
            if((key == groupEntry2.text!) && (value == passwordyEntry2.text!)){
                print("going over now")
               performSegue(withIdentifier: "toActualSchedule", sender: nil)
                
            }
            
            else{
                print("wrong password")
            }
       
        }
        
        
        
        

    }
    
}
