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
        
        for i in 0 ..< manyNameandPasswords.groupInfoClass.count{
            
            if((groupEntry2.text == manyNameandPasswords.groupInfoClass[i].groupNameClass) && (passwordyEntry2.text == manyNameandPasswords.groupInfoClass[i].groupPasswordClass)){
                print("going over now")
               performSegue(withIdentifier: "toActualSchedule", sender: nil)
                
            }
            else{
               print("wrong password")
            }
            
            
            
            
            
            
        }
    }
    
}
