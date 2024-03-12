//
//  ViewController.swift
//  volleyballSched
//
//  Created by MYKAELA WALLEN on 3/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func editAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toEditScreen", sender: nil)
        
    }
    
    
    

}

