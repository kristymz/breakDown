//
//  JohnsonKitchenWrongViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation
class JohnsonKitchenWrongViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You chose to tell your parents. Before you could finish explaining what you felt, your parents accused you of lying. Your dad accused you of trying to fake your way out of an exam and your mother started complaining on why you insist on making her life harder. You begin to think maybe just going to school was the better option..."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToSixPointFive(_ sender: UIStoryboardSegue){}
    
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
