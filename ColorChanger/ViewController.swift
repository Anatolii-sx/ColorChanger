//
//  ViewController.swift
//  ColorChanger
//
//  Created by Анатолий Миронов on 20.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorOfView: UIView!
    
    @IBOutlet var redColorValueLabel: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    private var red: Float = 0
    private var green: Float = 0
    private var blue: Float = 0
    
    private func makeColorOfView(red: Float, green: Float, blue: Float, label: String) {

        colorOfView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1
        )
        
        switch label {
        case "forRed":
            self.red = red
            redColorValueLabel.text = String(format: "%.2f", red)
        case "forGreen":
            self.green = green
            greenColorValueLabel.text = String(format: "%.2f", green)
        case "forBlue":
            self.blue = blue
            blueColorValueLabel.text = String(format: "%.2f", blue)
        default:
            self.red = red
            self.green = green
            self.blue = blue
            redColorValueLabel.text = String(format: "%.2f", red)
            greenColorValueLabel.text = String(format: "%.2f", green)
            blueColorValueLabel.text = String(format: "%.2f", blue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorOfView.layer.cornerRadius = 10

        makeColorOfView(red: 0.40, green: 1, blue: 0.6, label: "Start")
    }
    
    @IBAction func redSliderMoved() {
        makeColorOfView(red: redColorSlider.value, green: green, blue: blue, label: "forRed")
    }
    
    @IBAction func greenSliderMoved() {
        makeColorOfView(red: red, green: greenColorSlider.value, blue: blue, label: "forGreen")
    }
    
    @IBAction func blueSliderMoved() {
        makeColorOfView(red: red, green: green, blue: blueColorSlider.value, label: "forBlue")
    }
}

