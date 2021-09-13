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
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 5
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
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
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
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
        
        // Generating Random Message
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count - 1)
        awesomeLabel.text = messages[messageNumber]
        
        // Generating Random Image
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages - 1)
        imageView.image = UIImage(named: "image\(imageNumber)")

        // Generating Random Sound
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds)
        playSound(name: "sound\(soundNumber)")
        
    }
    
}

