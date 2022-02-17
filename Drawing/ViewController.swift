//
//  ViewController.swift
//  Drawing
//
//  Created by Nurlybek Saktagan on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var customView: CustomView!
    
    @IBAction func circlePressed(_ sender: UIButton) {
        customView.type = 0
    }
    
    @IBAction func rectanglePressed(_ sender: UIButton) {
        customView.type = 1
    }
    
    @IBAction func linePressed(_ sender: UIButton) {
        customView.type = 2
    }
    
    @IBAction func trianglePressed(_ sender: UIButton) {
        customView.type = 3
    }
    
    @IBAction func penSelected(_ sender: UIButton) {
        customView.type = 4
    }
    
    @IBAction func fillSwitch(_ sender: UISwitch) {
        customView.isFilled = sender.isOn ? true : false
    }
    
    @IBAction func colorChange(_ sender: UIButton) {
        customView.color = sender.backgroundColor!
    }
    
    @IBAction func undoPressed(_ sender: UIButton) {
        customView.undo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.isFilled = true
    }
}

