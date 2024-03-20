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
        
        print(EachGroupsTournaments.nameAndPassDic)
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("settong the count to 0")
        JoinViewController.counting = 0
    }
 
    

    @IBAction func joinGroupAction(_ sender: Any) {
        
       
        
        for (key, value) in EachGroupsTournaments.nameAndPassDic{
            print(key)
            print(value)
          
            
            
            if((key == groupEntry2.text!)&&((value == passwordyEntry2.text!))){
                print("name correct")
                 performSegue(withIdentifier: "toActualSchedule", sender: nil)
                
                break
                
            }
            else{
                print("adding to JoinViewController")
                JoinViewController.counting = JoinViewController.counting + 1
                print("wrong password")
                
            }
       
           
        }
        
        
        
        

    }
    
}
