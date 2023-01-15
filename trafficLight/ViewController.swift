//
//  ViewController.swift
//  trafficLight
//
//  Created by Anton Stogov on 09/01/2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 5
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
    }
        @IBAction func startButtonPressed() {
            if startButton.currentTitle == "START" {
            }
            
            switch currentLight {
            case .red:
                greenLight.alpha = lightIsOff
                redLight.alpha = lightIsOn
                currentLight = .yellow
            case .yellow:
                redLight.alpha = lightIsOff
                yellowLight.alpha = lightIsOn
                currentLight = .green
            case .green:
                greenLight.alpha = lightIsOn
                yellowLight.alpha = lightIsOff
                currentLight = .red
                
            }
            
        }
        

    }




