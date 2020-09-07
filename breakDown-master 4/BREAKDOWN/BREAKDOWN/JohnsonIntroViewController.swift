//
//  JohnsonIntroViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/5/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation

class JohnsonIntroViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    var str = "You are Jeremy. You're a 16 year old living in New York. You have two other siblings, a 10 year old brother and an 18 year old sister. You recently have begun feeling weird, not yourself. Please press NEXT to continue."
    
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
 @IBAction func unwindToFour(_ sender: UIStoryboardSegue){}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
