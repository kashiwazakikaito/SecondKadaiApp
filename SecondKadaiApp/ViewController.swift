//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 柏崎快音 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    var inputText1:String = ""
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        input.delegate = self
        input.text = "入力はこちら"
        input.textColor = UIColor.gray
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        inputText1 = string
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewCintroller:SecondViewController = segue.destination as! SecondViewController
        secondViewCintroller.secondInputText = inputText1
    }
    
    @IBAction func back(_ segue: UIStoryboardSegue) {
    }

}

