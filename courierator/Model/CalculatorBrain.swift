//
//  CalculatorBrain.swift
//  courierator
//
//  Created by Дмитрий Константинов on 08.10.2020.
//

import Foundation

struct Calculator {
    
    var result: Float?
    
    mutating func getResult(timePrice: String?, deliPrice: String?, timeAmount: String?, deliAmount: String?) -> String {
//        let value = value ?? (timePrice: "70.0", deliPrice: "60.0", timeAmount: "8", deliAmount: "15")
//        var timePrice: Float, deliPrice: Float, timeAmount: Float, deliAmount: Float
        let timePrice = Float(timePrice!) ?? 0.0
        let deliPrice = Float(deliPrice!) ?? 0.0
        let timeAmount = Float(timeAmount!) ?? 8.0
        let deliAmount = Float(deliAmount!) ?? 15.0
        result = timePrice * timeAmount + deliPrice * deliAmount
        
        return String(result!)
    }
    
    func getAdvice() -> String {
        switch result! {
        case 0.0:
            return "Ты че, не работаешь совсем?"
        case 1...900:
            return "Работай больше"
        case 901...1500:
            return "Нормально работаешь"
        case 1501...:
            return "Воу, машина, отдохни"
        default:
            return "Данные херня какая-то"
        }
    }
}
