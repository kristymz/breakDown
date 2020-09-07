//
//  JohnsonTIredWrongViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation
class JohnsonTIredWrongViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You went to sleep thinking if your parents woke you up, you could explain this feeling that has been sucking the life out of you all day. This was not the case however, as the second your parents woke you up they scolded you for being unproductive and lazy. Before you could explain, they stormed out and said to prepare the table for dinner. The feeling has gotten larger..."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
       
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToNinePointFive(_ sender: UIStoryboardSegue){}
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

