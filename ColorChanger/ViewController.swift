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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorOfView.layer.cornerRadius = 10
        
        makeColorOfView()
        changeLabelValue(number: 0)
    }
    
    @IBAction func redSliderMoved() {
        makeColorOfView()
        changeLabelValue(number: 1)
    }
    
    @IBAction func greenSliderMoved() {
        makeColorOfView()
        changeLabelValue(number: 2)
    }
    
    @IBAction func blueSliderMoved() {
        makeColorOfView()
        changeLabelValue(number: 3)
    }
    
    private func makeColorOfView() {
        colorOfView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    private func changeLabelValue(number: Int) {
        switch number {
        case 1:
            redColorValueLabel.text = String(format: "%.2f", redColorSlider.value)
        case 2:
            greenColorValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        case 3:
            blueColorValueLabel.text = String(format: "%.2f", blueColorSlider.value)
        default:
            redColorValueLabel.text = String(format: "%.2f", redColorSlider.value)
            greenColorValueLabel.text = String(format: "%.2f", greenColorSlider.value)
            blueColorValueLabel.text = String(format: "%.2f", blueColorSlider.value)
        }
    }
}

