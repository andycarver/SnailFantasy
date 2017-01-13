//
//  MainViewController.swift
//  SnailFantasy
//
//  Created by Ben Swanson on 1/12/17.
//  Copyright © 2017 Benjamin Swanson. All rights reserved.
//

import UIKit
class MainViewController: UIViewController {
    var heroInformation: [String?] = []
    
    @IBOutlet weak var heroJobLabel: UILabel!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroGoldLabel: UILabel!
    var heroGold: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        heroNameLabel.text = heroInformation[0]!
        heroJobLabel.text = heroInformation[1]!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
