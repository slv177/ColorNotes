//
//  notesModel.swift
//  ColorNotes
//
//  Created by SS on 04/10/2018.
//  Copyright © 2018 SS. All rights reserved.
//

import Foundation
import UIKit

/**
 Structure for describing notes.
 
 Passes choosed note to functions.
 Pattern Bridge.
 */
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

