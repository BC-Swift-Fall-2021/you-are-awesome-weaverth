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
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        
        print(imageNumber)
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        if imageNumber < 9 {
            imageNumber = imageNumber + 1
        }
        else {
            imageNumber = 0
        }
        
        
        
    //        let awesomeMessage = "Ohhhhhh yeaaaaahhhhh!!"
    //        let greatMessage = "Mmmmmm hmmm!!"
    //        let bombMessage = "Bazinga!!!!!"
    //
    //        if awesomeLabel.text == awesomeMessage {
    //            awesomeLabel.text = greatMessage
    //            imageView.image = UIImage(named: "image1")
    //        }
    //        else if awesomeLabel.text == greatMessage {
    //            awesomeLabel.text = bombMessage
    //            imageView.image = UIImage(named: "image2")
    //        }
    //        else {
    //            awesomeLabel.text = awesomeMessage
    //            imageView.image = UIImage(named: "image0")
    //        }
             
            
    }
    
}

