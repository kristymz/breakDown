//
//  ViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/5/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
}
    @IBAction func unwindToOne(_ sender: UIStoryboardSegue){}
}
