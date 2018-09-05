//
//  ViewController.swift
//  Tipster
//
//  Created by Tiange Wang on 9/5/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var enteredPrice: String = "0"
    var lowTip: Int = 10
    var midTip: Int = 15
    var highTip: Int = 20
    var lowPrice: Double = 0.0
    var midPrice: Double = 0.0
    var highPrice: Double = 0.0
    var lowTotal: Double = 0.0
    var midTotal: Double = 0.0
    var highTotal: Double = 0.0
    var groupSize: Int = 1
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var lowTipLabel: UILabel!
    @IBOutlet weak var midTipLabel: UILabel!
    @IBOutlet weak var highTipLabel: UILabel!
    @IBOutlet weak var lowPriceLabel: UILabel!
    @IBOutlet weak var midPriceLabel: UILabel!
    @IBOutlet weak var highPriceLabel: UILabel!
    @IBOutlet weak var lowTotalLabel: UILabel!
    @IBOutlet weak var midTotalLabel: UILabel!
    @IBOutlet weak var highTotalLabel: UILabel!
    @IBOutlet weak var groupSizeLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var groupSlider: UISlider!
    
    @IBAction func btn0(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("0")
        updatePriceLabel()
    }
    @IBAction func btn1(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("1")
        updatePriceLabel()
    }
    @IBAction func btn2(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("2")
        updatePriceLabel()
    }
    @IBAction func btn3(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("3")
        updatePriceLabel()
    }
    @IBAction func btn4(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("4")
        updatePriceLabel()
    }
    @IBAction func btn5(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("5")
        updatePriceLabel()
    }
    @IBAction func btn6(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("6")
        updatePriceLabel()
    }
    @IBAction func btn7(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("7")
        updatePriceLabel()
    }
    @IBAction func btn8(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
            != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("8")
        updatePriceLabel()
    }
    @IBAction func btn9(_ sender: UIButton) {
        if enteredPrice.prefix(1) == "0" && enteredPrice.prefix(2)
        != "0." {
            enteredPrice.remove(at: enteredPrice.startIndex)
        }
        enteredPrice.append("9")
        updatePriceLabel()
    }
    @IBAction func btnDecimal(_ sender: UIButton) {
        var canAdd: Bool = true
        for char in Array(enteredPrice) {
            if char == "." {
                canAdd = false
            }
        }
        if canAdd == true {
            enteredPrice.append(".")
        }
        updatePriceLabel()
    }
    @IBAction func btnClear(_ sender: UIButton) {
        enteredPrice = "0"
        updatePriceLabel()
    }
    @IBAction func tipSlider(_ sender: UISlider) {
        lowTip = Int(tipSlider.value)
        midTip = Int(tipSlider.value) + 5
        highTip = Int(tipSlider.value) + 10
        updateTip()
    }
    @IBAction func sizeSlider(_ sender: UISlider) {
        groupSize = Int(groupSlider.value)
        groupSizeLabel.text = "Group Size: \(groupSize)"
        updateTip()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updatePriceLabel() {
        priceLabel.text = enteredPrice
        updateTip()
    }
    
    func updateTip() {
        lowTipLabel.text = String(lowTip) + "%"
        midTipLabel.text = String(midTip) + "%"
        highTipLabel.text = String(highTip) + "%"
        
        if let result = Double(enteredPrice) {
            lowPrice = (result * (Double(lowTip) / 100.0)) / Double(groupSize)
            midPrice = (result * (Double(midTip) / 100.0)) / Double(groupSize)
            highPrice = (result * (Double(highTip) / 100.0)) / Double(groupSize)
            lowTotal = (result + result * (Double(lowTip) / 100.0)) / Double(groupSize)
            midTotal = (result + result * (Double(midTip) / 100.0)) / Double(groupSize)
            highTotal = (result + result * (Double(highTip) / 100.0)) / Double(groupSize)
            
            lowPriceLabel.text = String(format: "%.2f", lowPrice)
            midPriceLabel.text = String(format: "%.2f", midPrice)
            highPriceLabel.text = String(format: "%.2f", highPrice)
            lowTotalLabel.text = String(format: "%.2f", lowTotal)
            midTotalLabel.text = String(format: "%.2f", midTotal)
            highTotalLabel.text = String(format: "%.2f", highTotal)
        } else {
            print("Error occured")
        }
    }

}

