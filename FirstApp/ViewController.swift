//
//  ViewController.swift
//  FirstApp
//
//  Created by Teddy Weaver on 8/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        
        awesomeLabel.text = "Ohhhhhh yeaaaaahhhhh!!"
        imageView.image = UIImage(named: "image0")
        
        
    }
    
}

