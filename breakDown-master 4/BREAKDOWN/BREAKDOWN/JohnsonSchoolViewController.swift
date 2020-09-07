//
//  JohnsonSchoolViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation
class JohnsonSchoolViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You arrive at school, the empty feeling is still within you but you decide to keep going and make it through the day. You feel tired and can barely keep up with any of the material in class. You barely finished your math exam as you were struggling to keep focused. This feeling is still there and it is getting larger. One of your teachers notices and asks you what's wrong. You know if you tell her how you feel, she will call your parents. What do you do?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        
         view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToSeven(_ sender: UIStoryboardSegue){}
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
