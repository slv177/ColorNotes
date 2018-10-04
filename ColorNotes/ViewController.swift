//
//  ViewController.swift
//  ColorNotes
//
//  Created by SS on 16.9.18.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit
import AudioKit
class ViewController: UIViewController {
    
    @IBAction func cButton(_ sender: Any) { doAction(cNote) }
    @IBAction func dButton(_ sender: Any) { doAction(dNote) }
    @IBAction func eButton(_ sender: Any) { doAction(eNote) }
    @IBAction func fButton(_ sender: Any) { doAction(fNote) }
    @IBAction func gButton(_ sender: Any) { doAction(gNote) }
    @IBAction func aButton(_ sender: Any) { doAction(aNote) }
    @IBAction func bButton(_ sender: Any) { doAction(bNote) }
    
    @IBOutlet weak var colorOutlet: UIView!
    
    
    /**
     Running all actions.
     
     Passes choosed note to functions.
     */
    func doAction(_ note: note) {
        setColor(note)
        playSound(note)
    }
    
    /**
     Set color according the note.
     
     - Parameters:
     - note: choosed note
     */
    func setColor(_ note: note) {
        self.colorOutlet.backgroundColor = note.color
    }
    
    /**
     Playing sound with oscillator.
     
     - Parameters:
     - note: choosed note
     */
    func playSound(_ note: note) {
        let oscillator = AKOscillator()
        AudioKit.output = oscillator
        try! AudioKit.start()
        oscillator.frequency = note.tone
        oscillator.amplitude = 0.5
        oscillator.start()
        sleep(1)
        oscillator.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

