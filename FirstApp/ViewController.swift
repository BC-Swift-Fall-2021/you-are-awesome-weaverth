//
//  ViewController.swift
//  FirstApp
//
//  Created by Teddy Weaver on 8/30/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func swallowButtonPressed(_ sender: UIButton) {
        
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
        
       
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        awesomeLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")

        if let sound = NSDataAsset(name: "sound0"){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch{
                print("😡Error, \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        }
        else{
            print("😡Error, could not read data from file sound0")
        }
    }
    
}

