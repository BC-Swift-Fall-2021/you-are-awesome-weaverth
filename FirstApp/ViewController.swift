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
        
        
        
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "Ohhhhhh yeaaaaahhhhh!!"
        let greatMessage = "Mmmmmm hmmm!!"
        let bombMessage = "Bazinga!!!!!"
    
        if awesomeLabel.text == awesomeMessage {
            awesomeLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        }
        else if awesomeLabel.text == greatMessage {
            awesomeLabel.text = bombMessage
            imageView.image = UIImage(named: "image2")
        }
        else {
            awesomeLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
             
            
    }
    
}

