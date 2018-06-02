//
//  ViewController.swift
//  checkwork
//
//  Created by 松田結衣 on 2018/06/02.
//  Copyright © 2018年 YuiMatsuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Double = 0.0
    var numberf: Int = 0
    var numbers: Int = 0
    @IBOutlet var labelf: UILabel!
    @IBOutlet var labels: UILabel!
    @IBOutlet var Countlabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusf() {
        numberf = numberf + 1
        labelf.text = String(numberf)
    }
    
    @IBAction func minusf() {
        numberf = numberf - 1
        labelf.text = String(numberf)
    }
    
    @IBAction func pluss() {
        numbers = numbers + 1
        labels.text = String(numbers)
    }
    
    @IBAction func minuss() {
        numbers = numbers - 1
        labels.text = String(numbers)
    }
    
    @IBAction func counting() {
        number = (Double(numberf) / ( Double((numberf + numbers)))) * 100
        print(number)
        Countlabel.text = String(number)
    }

    @IBAction func reset() {
        number = 0
        numberf = 0
        numbers = 0
        Countlabel.text = String(number)
        labelf.text = String(numberf)
        labels.text = String(numbers)
        
    }


}

