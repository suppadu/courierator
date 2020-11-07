//
//  ResultViewController.swift
//  courierator
//
//  Created by Дмитрий Константинов on 08.10.2020.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: String?
    var advice: String?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = result
        adviceLabel.text = advice
    }
    
    @IBAction func recalculateTouch(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
