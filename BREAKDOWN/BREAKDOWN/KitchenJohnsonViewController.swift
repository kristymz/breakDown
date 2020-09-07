//
//  KitchenJohnsonViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation
class KitchenJohnsonViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You are now in the kitchen. It is a usual day in your household; Mom and Dad arguing, your siblings staying quiet, tension is everywhere. As your siblings are getting up to go to school, that empty feeling hits you again, this time even harder. You do not feel well enough to go to school. What do you do?"
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
    @objc
    func onClickView(){
        
        for i in str {
            AudioServicesPlaySystemSound(1306)
            textLbl.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.05)
        }
    }
@IBAction func unwindToSix(_ sender: UIStoryboardSegue){}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
