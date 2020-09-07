//
//  JohnsonDinnerWrongViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation

class JohnsonDinnerWrongViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
     var str = "You decide to tell your mom that you are not hungry. As usual, before you could explain, she throws the plate off the table. She begins to rant and yell about how ungrateful you and your siblings are and begins to point out every flaw she can find. This one did not affect you as much, maybe the feeling is starting to subside..."
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)

        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToTenPointFive(_ sender: UIStoryboardSegue){}
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
