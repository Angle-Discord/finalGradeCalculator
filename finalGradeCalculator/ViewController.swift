//
//  ViewController.swift
//  finalGradeCalculator
//
//  Created by ANGEL GARCIA on 11/12/18.
//  Copyright © 2018 ANGEL GARCIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var desiredGrade = ""
    var currentGrade = ""
    var examWeight = ""
    
    
    
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var examWeightTextField: UITextField!
    @IBOutlet weak var necessaryGradeLabel: UILabel!
    @IBOutlet weak var extraCreditLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onCalcGradeTapped(_ sender: Any) {
        guard let desiredGrade = Double(desiredGradeTextField.text!) else {return}
        guard let currentGrade = Double(currentGradeTextField.text!) else {return}
        guard let examWeight = Double(examWeightTextField.text!) else {return}
        let necessaryGrade = (100 * desiredGrade - (100 - examWeight) * currentGrade) / examWeight
        
        necessaryGradeLabel.text = String(necessaryGrade)
    
        if necessaryGrade <= 100.0 {
            self.view.backgroundColor = .green
            
        }else{
            self.view.backgroundColor = .red
        extraCreditLabel.text = "Ask the professor to 'git good' or any extra credit opportunities"
        }
        
        
        
    }
    @IBOutlet weak var desiredGradeSegmentOn: UILabel!
    
    
    
    
    
}




