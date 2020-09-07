//
//  JohnsonSchoolWrongViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation

class JohnsonSchoolWrongViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "You decided to tell your teacher how you felt. She called your mother to inform her and sent you down to the nurse's office in order for your mom to pick you up. When your mom got there, she was calm and collected. When you got back into the car, it was a whole different story. She began accusing you of faking whatever you were feeling and condemned you for failing your test. You feel to begin even more empty than before. Maybe it will get better when you get back home..."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
     @IBAction func unwindToSevenPointFive(_ sender: UIStoryboardSegue){}
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
