//
//  JohnsonEndViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/7/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation


class JohnsonEndViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!

    var str = "The situations you saw here are just a small part of what people struggling with depression go through in toxic households. If you are one of these people, please know you are not suffering alone. You are loved and cherished. These toxic situations are just blips in your beautiful, astounding life. If you are not apart of these toxic households and are still struggling with depression, you are still valid. Please spread kindness as hate can hide anywhere."

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToThirteen(_ sender: UIStoryboardSegue){}
    @objc
       func onClickView(){
           
           for i in str {
               AudioServicesPlaySystemSound(1306)
               textLbl.text! += "\(i)"
               RunLoop.current.run(until: Date()+0.05)

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
}
