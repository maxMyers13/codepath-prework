//
//  ViewController.swift
//  CodePathP0
//
//  Created by Maxwell Myers on 1/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var petSwitcher: UISwitch!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var petCounter: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameText: UITextField!
    
    @IBAction func stepperPressed(_ sender: UIStepper){
        petCounter.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        var intro = "My name is " + (firstNameText.text!)
        
        intro += " " + (lastNameTextField.text!) + " and I attend " + (schoolName.text!)
        
        intro += ". I am currently in my " + (year!)
        
        intro += " year and I own " + (petCounter.text!)
        intro += " dogs. It is " + (petSwitcher.isOn ? "true" : "false")
        intro += " that I want more pets."
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

