//
//  JohnsonBeginViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit
import AVFoundation

class JohnsonBeginViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "A new day is here and you have just woken up. As you look around your room, you suddenly feel very empty and anxious. Before you could do anything about it, your mom was yelling for you to hurry up and get ready for school. With these confusing emotions, you go downstairs."
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(OnClickView))
        self.view.addGestureRecognizer(gesture)
        
         view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
    }
    @IBAction func unwindToFive(_ sender: UIStoryboardSegue){}
    @objc
    func OnClickView(){
        
        for i in str {
            AudioServicesPlaySystemSound(1306)
            textLbl.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.05)
        }
        
        }
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

