//
//  ViewController.swift
//  # 11_Salome-Mskhvilidze
//
//  Created by Mcbook Pro on 03.07.22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var labels: [UILabel]!
    @IBOutlet weak var texFild: UITextField!
    @IBOutlet weak var calculatedValue: UILabel!
    
    //MARK: - viewcontroller Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    //MARK: - button actions
    @IBAction func sliderMoved(_ sender: UISlider) {
        
        for tag in 0..<labels.count{
            let random = Int.random(in: 0...Int(sender.value))
            labels[tag].text = String(random)
          
        }
    }
    
    @IBAction func prosses(_ sender: Any) {
        
        for item in labels{
            if item.text != "" {
                
                switch texFild.text! {
                    
                case "maximum" :
                    let max = labels.compactMap{ Int($0.text!)}.max()
                    calculatedValue.text = " max value is  \(String(max!))"
                    
                case "minimum":
                    let min = labels.compactMap{ Int($0.text!)}.min()
                    calculatedValue.text = " min value is  \(String(min!))"
                    
                case "avarage":
                    
                    let sumOfValues: Int = labels.reduce(into: 0) { result, Label in
                        result += Int(Label.text!)!
                    }
                    let avarage = sumOfValues / labels.count
                    calculatedValue.text! = " avarage  is  \(String(avarage))"

                default:
                    break
                    
                }
                
            }
        }
       
    }
}
    

