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
    let messages = ["Beans?",
                                "Beans!!!",
                                "Bean Bean!",
                                "Yeah Beans!",
                                "Mmm Bean.",
                                "Bean...",
                                "Frijoles!!!",
                                "Bean Bean bean",
                                "Bean man!",
                                "Where you bean?",
                                "b e a n :)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        
        print(imageNumber)
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        //let awesomeMessage = messages[imageNumber]
        imageView.image = UIImage(named: imageName)
        awesomeLabel.text = messages[Int.random(in: 0...messages.count - 1)]
        imageNumber = Int.random(in: 0...9 - 1)
// 
        //       if imageNumber < 9 {
//            imageNumber = imageNumber + 1
//        }
//        else {
//            imageNumber = 0
//        }
        
        
        
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

