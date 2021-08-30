//
//  ViewController.swift
//  FirstApp
//
//  Created by Teddy Weaver on 8/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("😎🍆💦 viewDidLoad has executed!")
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        
        print("😎🍆💦 swallowButton has been pressed!")
        messageLabel.text = "Ohhhhhh yeaaaaahhhhh!!!"
        
    }
    
}

