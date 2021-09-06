//
//  ViewController.swift
//  FirstApp
//
//  Created by Teddy Weaver on 8/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("😎 viewDidLoad has executed!")
        awesomeLabel.text = "Bean time, eat up!"
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        
        print("😎  swallowButton has been pressed!")
        awesomeLabel.text = "Ohhhhhh yeaaaaahhhhh!!"
        
    }
    
}

