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
    
    struct note {
        let tone: Double
        let color: UIColor
        
        init(_ tone: Double, with color: UIColor) {
            self.tone = tone
            self.color = color
        }
    }
    
    let cNote = note(261.63, with: UIColor.red)
    let dNote = note(293.66, with: UIColor.orange)
    let eNote = note(329.63, with: UIColor.yellow)
    let fNote = note(349.23, with: UIColor.green)
    let gNote = note(392.00, with: UIColor.cyan)
    let aNote = note(440.00, with: UIColor.blue)
    let bNote = note(493.88, with: UIColor.purple)
    
    func doAction(_ note: note) {
        setColor(note)
        playSound(note)
    }
    
    func setColor(_ note: note) {
        self.colorOutlet.backgroundColor = note.color
    }
    
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
        // Dispose of any resources that can be recreated.
    }

}

