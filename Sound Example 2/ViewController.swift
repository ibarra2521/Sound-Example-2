//
//  ViewController.swift
//  Sound Example 2
//
//  Created by Nivardo Ibarra on 1/12/16.
//  Copyright © 2016 Nivardo Ibarra. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let soundURL = NSBundle.mainBundle().URLForResource("I can't help falling in love with You", withExtension: "mp3")
        do {
            try player = AVAudioPlayer(contentsOfURL: soundURL!)
        }catch {
            print("Error loading the sound file")
        }
    }

    @IBAction func play() {
        if !player.playing {
            player.play()
        }
    }

    @IBAction func pause() {
        if player.playing {
            player.pause()
        }
    }
    
    @IBAction func stop() {
        if player.playing {
            player.stop()
            player.currentTime = 0
        }
    }
}

