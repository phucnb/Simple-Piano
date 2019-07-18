//
//  ViewController.swift
//  Simple Piano
//
//  Created by Ba Phuc Nguyen on 2019-07-18.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!

    let soundNameArray = ["C4","Db4","D4","Eb4","E4","F4","Gb4","G4","Ab4","A4","Bb4","B4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {

        playSound(noteName: soundNameArray[sender.tag-1])

    }

    func playSound(noteName: String){

        let url = Bundle.main.url(forResource: noteName, withExtension: "aiff")
        do {


                audioPlayer = try AVAudioPlayer(contentsOf: url!)
                audioPlayer.prepareToPlay()
                audioPlayer.play()

        }catch {
            print(error)
        }
    }

}

