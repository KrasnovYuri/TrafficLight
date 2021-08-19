//
//  ViewController.swift
//  TrafficLight
//
//  Created by Юрий Краснов on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RedView: UIView!
    @IBOutlet weak var YellowView: UIView!
    @IBOutlet weak var GreenView: UIView!
    @IBOutlet weak var StartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedView.layer.cornerRadius = 63
        YellowView.layer.cornerRadius = 63
        GreenView.layer.cornerRadius = 63
        StartButton.layer.cornerRadius = 15
        
    }
    
    var buttonClick = 0
    
    @IBAction func StartButtonPressed() {
        buttonClick += 1
        if buttonClick == 1{
            RedView.alpha = 1
            GreenView.alpha = 0.3
        } else if buttonClick == 2 {
            RedView.alpha = 0.3
            YellowView.alpha = 1
        } else if buttonClick == 3 {
            GreenView.alpha = 1
            YellowView.alpha = 0.3
            buttonClick = 0
        }
        
        StartButton.setTitle("Next", for: .normal)
        
        
    }
    
}


