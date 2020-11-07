//
//  ViewController.swift
//  courierator
//
//  Created by Дмитрий Константинов on 07.10.2020.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var timePriceTextField: UITextField!{
        didSet { timePriceTextField.addDoneCancelToolbar()}
    }
    @IBOutlet weak var deliPriceTextField: UITextField!{
        didSet { deliPriceTextField.addDoneCancelToolbar()}
    }
    @IBOutlet weak var timeAmountTextField: UITextField!{
        didSet { timeAmountTextField.addDoneCancelToolbar()}
    }
    @IBOutlet weak var deliAmountTextField: UITextField!{
        didSet { deliAmountTextField.addDoneCancelToolbar()}
    }
    @IBOutlet weak var timeAmountSlider: UISlider!
    @IBOutlet weak var deliAmountSlider: UISlider!
    
    var calc = Calculator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeAmountSlider.value = 8
        deliAmountSlider.value = 15
    }

    @IBAction func touchSlider(_ sender: UISlider) {
        if sender.restorationIdentifier == "timeAmountSlider" {
            timeAmountTextField.text = String(Int(sender.value))
        }else{
            deliAmountTextField.text = String(Int(sender.value))
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
//        print(calc.getResult(timePrice: timePriceTextField.text, deliPrice: deliPriceTextField.text, timeAmount: timeAmountTextField.text, deliAmount: deliAmountTextField.text))
//        print("посчитал")
        self.performSegue(withIdentifier: "goResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = calc.getResult(timePrice: timePriceTextField.text,
                                                  deliPrice: deliPriceTextField.text,
                                                  timeAmount: timeAmountTextField.text,
                                                  deliAmount: deliAmountTextField.text)
            destinationVC.advice = calc.getAdvice()
        }
        
    }
}
