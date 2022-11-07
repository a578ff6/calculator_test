//
//  ViewController.swift
//  Calculator
//
//  Created by 曹家瑋 on 2022/7/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var taxTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!

    //計算結果
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var taxPriceLabel: UILabel!
    @IBOutlet weak var onePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculator() {
    
    if priceTextField.text == "" || taxTextField.text == "" ||
    peopleTextField.text == ""{
            totalPriceLabel.text = "0"
            taxPriceLabel.text = "0"
            onePriceLabel.text = "0"
        }else{
            //計算稅金
            let tax = Double(priceTextField.text!)! *
            Double(taxTextField.text!)! / 100
            let total = Double(priceTextField.text!)! + tax
            let share = total / Double(peopleTextField.text!)!
            //小數點第一位
            totalPriceLabel.text = "$" + String(format: "%.1f", total)
            taxPriceLabel.text = "$" + String(format: "%.1f", tax)
            onePriceLabel.text = "$" + String(format: "%.1f", share)
            
            //點擊計算收起鍵盤
            priceTextField.resignFirstResponder()
            taxTextField.resignFirstResponder()
            peopleTextField.resignFirstResponder()
        }
        
    }

    @IBAction func pressClearBtn(_ sender: UIButton) {
        priceTextField.text = ""
        taxTextField.text = ""
        peopleTextField.text = ""
        totalPriceLabel.text = "0"
        taxPriceLabel.text = "0"
        onePriceLabel.text = "0"
    
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

