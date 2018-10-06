// ViewController.swift
//  ColorNotes
//
//  Created by SS on 16.9.18.
//  Copyright © 2018 SS. All rights reserved.
//


/**  Что мне непонятно
    - как реализовать звук по touchDown и прекращение по touchUp
    - как расположить элементы в нужном порядке по оси Z
    - как расположить черные клавиши
*/

import UIKit
import AudioKit
class ViewController: UIViewController {
    
    @IBAction func cButtonDown(_ sender: Any) {setColor(cNote)}
    @IBAction func cButtonUp(_ sender: Any) {playSound(cNote)}
    
    @IBAction func dButtonDown(_ sender: UIButton) {setColor(dNote)}
    @IBAction func dButtonUp(_ sender: UIButton) { playSound(dNote) }
    
    @IBAction func eButtonDown(_ sender: UIButton) {setColor(eNote)}
    @IBAction func eButtonUp(_ sender: UIButton) { playSound(eNote) }
    
    @IBAction func fButtonDown(_ sender: UIButton) {setColor(fNote)}
    @IBAction func fButtonUp(_ sender: UIButton) { playSound(fNote) }
    
    @IBAction func gButtonDown(_ sender: UIButton) {setColor(gNote)}
    @IBAction func gButtonUp(_ sender: UIButton) { playSound(gNote) }
    
    @IBAction func aButtonDown(_ sender: UIButton) {setColor(aNote)}
    @IBAction func aButtonUp(_ sender: UIButton) { playSound(aNote) }
    
    @IBAction func bButtonDown(_ sender: UIButton) {setColor(bNote)}
    @IBAction func bButtonUp(_ sender: UIButton) { playSound(bNote) }
    
    @IBOutlet weak var colorOutlet: UIView!
    
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

