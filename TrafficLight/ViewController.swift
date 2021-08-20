//
//  ViewController.swift
//  TrafficLight
//
//  Created by Юрий Краснов on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        //super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.width / 1.7
        yellowView.layer.cornerRadius = yellowView.frame.width / 1.7
        greenView.layer.cornerRadius = greenView.frame.width / 1.7
        startButton.layer.cornerRadius = 15
    }
    
    private var buttonClick = 0
    
    @IBAction func StartButtonPressed() {
        buttonClick += 1
        if buttonClick == 1{
            redView.alpha = 1
            greenView.alpha = 0.3
        } else if buttonClick == 2 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if buttonClick == 3 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
            buttonClick = 0
        }
        
        startButton.setTitle("Next", for: .normal)
    }
}



