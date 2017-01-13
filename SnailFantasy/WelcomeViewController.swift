//
//  WelcomeViewController.swift
//  SnailFantasy
//
//  Created by Ben Swanson on 1/12/17.
//  Copyright © 2017 Benjamin Swanson. All rights reserved.
//

import UIKit
import CoreData

class WelcomeViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var heroNameTextField: UITextField!
    var newHero: [String] = []
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func jobChosen(_ sender: UIButton) {
        var jobChoice: String?
        switch sender.tag {
        case 0:
            jobChoice = "Warrior"
            break
        case 1:
            jobChoice = "Mage"
            break
        case 2:
            jobChoice = "Theif"
            break
        default: print("Error")
        }
        
//        let hero = NSEntityDescription.insertNewObject(forEntityName: "Hero", into: managedObjectContext) as! Hero
//        hero.name = heroNameTextField.text!
//        hero.job = jobChoice!

        self.performSegue(withIdentifier: "heroCreation", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "heroCreation" {
            let controller = segue.destination as! MainViewController
            controller.heroInformation = newHero
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        heroNameTextField.returnKeyType = .done
        heroNameTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

