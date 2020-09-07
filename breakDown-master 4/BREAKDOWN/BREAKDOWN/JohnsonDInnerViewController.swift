//
//  JohnsonDInnerViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation

class JohnsonDInnerViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You are now at the dinner table. Same old situation; siblings quiet, parents arguing, tension high. Your mom brings out your dinner: steak with mixed vegetables. As you look down on your plate, you realize you are not hungry. This seems unusual to you as you always finish your dinner plate, but you don't think much of it as you still feel overwhelmingly tired. You go to tell your mom that you are not hungry, but see that her mood is the same as ever. What will you do?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        
         view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
   @IBAction func unwindToTen(_ sender: UIStoryboardSegue){}
    @objc
    func onClickView(){
        
        for i in str {
            AudioServicesPlaySystemSound(1306)
            textLbl.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.05)
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
}
