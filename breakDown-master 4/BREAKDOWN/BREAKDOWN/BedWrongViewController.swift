//
//  BedWrongViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation

class BedWrongViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You decided to go to your mom and confess all your feelings. After you're done, your mom takes a deep breath. She begins to tell you about all the problems that have been occuring in HER life. She begins to rant about her boss, her pay, and her friends. After she's finished, she turns to you and says 'You do not have it hard. Man up.' The feeling in your chest explodes. The overwhelming feeling of being empty takes over, you hope maybe rest will take it off..."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToElevenPointFive(_ sender: UIStoryboardSegue){}
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
